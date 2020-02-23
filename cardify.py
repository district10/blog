import os
import re
import sys
import glob
import errno
import time
import shutil
import numpy as np
from typing import Dict, Tuple, Union, Any, List, Optional
from pprint import pprint


def rm_rf(path: str):
    if os.path.exists(path):
        shutil.rmtree(path)


def mkdir_p(path: str):
    try:
        path = os.path.abspath(path)
        os.makedirs(path)
    except OSError as e:
        if e.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else:
            logger.exception(f'failed at creating directorie(s): {path}')
            raise e


def count_words(text):
    num_char_ch = len(re.findall(r'[\u4e00-\u9fff]', text))
    num_char_en = len(re.findall(r'[\u0021-\u007e]', text))  # ! to ~
    num_words = num_char_ch / 3 + num_char_en / 5
    return num_words


def random_sleep(
    *,
    mu: float = 0.1,
    sigma: float = 1,
    min: float = 0.0,
    verbose: bool = True,
):
    sec = max(np.random.normal(mu, sigma), min)
    if verbose:
        print(f'sleep {sec:.2f}s')
    time.sleep(sec)


pwd = os.path.abspath(os.path.dirname(__file__))
output_dir = f'{pwd}/notes/cards'

HEADER = '<br><br><br><br>\n\n'
HEADER = ''
CARD_INDEX = 0


def write_note(
        text: str,
        *,
        prefix: Optional[str] = None,
        suffix: Optional[str] = None,
) -> str:
    global CARD_INDEX
    p = f'{output_dir}/card_{CARD_INDEX:010d}.md'
    CARD_INDEX += 1
    with open(p, 'w') as f:
        if prefix:
            f.write(prefix)
        f.write(text)
        if suffix:
            f.write(suffix)
    return p


def cardify_snippets(
    *,
    silent: bool = False,
    verbose: bool = False,
):
    global CARD_INDEX
    INDEX0 = CARD_INDEX
    snippets = list(glob.glob(f'{pwd}/../q/**/*.*'))
    if not silent:
        print(f'#snippets: {len(snippets)}')
    for index, path in enumerate(snippets):
        if verbose:
            print(f'processing snippet {index}/{len(snippets)}: {path}...')
        ext = path.split('.')[-1]
        lang = ({
            'geojson': 'json',
            'h': 'cpp',
            'js': 'javascript',
            'md': 'markdown',
            'mk': 'makefile',
            'osm': 'xml',
            'py': 'python',
            'sh': 'shell',
            'txt': 'plain',
        }).get(ext, ext if len(ext) < 10 else '')
        with open(path) as f:
            body = f.read()
        write_note(
            body,
            prefix=f'{HEADER}{path.split("/q/")[1]}\n```{lang}\n',
            suffix='```',
        )
    if not silent:
        print(f'CARDS: {INDEX0}->{CARD_INDEX}')


def cardify_notes(
    *,
    silent: bool = False,
    verbose: bool = False,
):
    global CARD_INDEX
    INDEX0 = CARD_INDEX
    notes = [
        path for path in glob.glob(f'{pwd}/notes/**/*.md')
        if not path.endswith('index.md') and not path.startswith(output_dir)
    ]
    if not silent:
        print(f'#notes: {len(notes)}')
    for index, path in enumerate(notes):
        if verbose:
            print(f'processing notes {index}/{len(notes)}: {path}...')
        with open(path) as f:
            for i, p in enumerate(re.split('\n-   ', f.read())[1:]):
                if p.count('\n') < 2:
                    continue
                write_note(p, prefix=f'{HEADER}-   ')
    if not silent:
        print(f'CARDS: {INDEX0}->{CARD_INDEX}')


def post_process_card(card_path: str, card_index: int, all_cards: List[str]):
    with open(card_path) as f:
        body = f.read()
    N_words = count_words(body)
    speed = 20  # / 100 words
    secs = np.clip(speed * N_words / 100, 10, 60)
    N_pages = len(all_cards)
    with open(card_path, 'w') as f:
        f.write(body)
        f.write(  #
            f'\n\n<small>{N_words} words, will sleep {secs} secs.</small>\n\n<script>\n'
            'document.addEventListener("DOMContentLoaded", (event) => {'
            """
    query = location.search.slice(1)
        .split('&')
        .map(p => p.split('='))
        .reduce((obj, pair) => {
            const [key, value] = pair.map(decodeURIComponent);
            obj[key] = value; return obj; // return ({ ...obj, [key]: value })
        }, {});
    speed = Number(query.speed || 1.0);\n"""
            '    idx = max => Math.floor(Math.random() * Math.floor(max));\n'
            '    sig = idx => `${idx}`.padStart(10, "0");\n'
            f'    setInterval(expandAll, Math.min({secs*1000}/speed/4, 5000));\n'
            '    setInterval(() => { window.location = `card_${sig(idx(' +
            str(N_pages) + '))}.html?speed=${speed}`; }, ' +
            f'{secs*1000}/speed);\n'
            '});\n'
            '</script>\n')


def generate_index(cards: List[str]):
    print(f'writing index.md...', end=' ')
    with open(f'{output_dir}/index.md', 'w') as f:
        f.write('# Cards\n')
        for card in cards:
            basename = os.path.basename(card)
            f.write(f'\n-   [{basename}]({basename})')


if __name__ == '__main__':
    # reset
    rm_rf(output_dir)
    mkdir_p(output_dir)

    # populate cards
    cardify_snippets()
    cardify_notes()

    # cards we have
    cards = sorted(glob.glob(f'{output_dir}/card*.md'))
    print('#cards: ', len(cards))

    # post process
    for index, card in enumerate(cards):
        post_process_card(card, index, cards)

    # indexing them
    generate_index(cards)
