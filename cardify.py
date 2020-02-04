import os
import re
import sys
import glob
import errno
import shutil
from typing import Dict, Tuple, Union, Any, List, Optional
from pprint import pprint


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


pwd = os.path.abspath(os.path.dirname(__file__))
output_dir = f'{pwd}/notes/cards'
shutil.rmtree(output_dir)
mkdir_p(output_dir)

HEADER = '<br><br><br><br>\n\n'
index = 0


def write_note(
        text: str,
        *,
        prefix: Optional[str] = None,
        suffix: Optional[str] = None,
) -> str:
    global index
    index += 1
    p = f'{output_dir}/card_{index:010d}.md'
    with open(p, 'w') as f:
        if prefix:
            f.write(prefix)
        f.write(text)
        if suffix:
            f.write(suffix)
    return p


if __name__ == '__main__':
    for path in glob.glob(f'{pwd}/../q/**/*.*'):
        path = os.path.abspath(path)
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
        print(f'processing {path}...')
        write_note(
            body,
            prefix=f'{HEADER}{path.split("/q/")[1]}\n```{lang}\n',
            suffix='```',
        )

    for path in glob.glob(f'{pwd}/notes/**/*.md'):
        if path.endswith('index.md') or path.startswith(output_dir):
            continue
        print(f'processing {path}...')
        with open(path) as f:
            for i, p in enumerate(re.split('\n-   ', f.read())[1:]):
                if p.count('\n') < 2:
                    continue
                write_note(p, prefix=f'{HEADER}-   ')

    cards = sorted(glob.glob(f'{output_dir}/card*.md'))
    print(f'wrote #{len(cards)} cards, writing index.md...', end=' ')
    with open(f'{output_dir}/index.md', 'w') as f:
        f.write('# Cards\n')
        for card in cards:
            basename = os.path.basename(card)
            f.write(f'\n-   [{basename}]({basename})')
    print('done')
