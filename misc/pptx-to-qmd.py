#!/usr/bin/env python

from pptx2md import convert, ConversionConfig
from pathlib import Path

convert(
    ConversionConfig(
        pptx_path=Path('presentation.pptx'),
        output_path=Path('output.md'),
        image_dir=Path('img'),
        disable_notes=True
    )
)
