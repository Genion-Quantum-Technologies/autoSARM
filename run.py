"""Run the scientific CLI from the source checkout."""
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent / "src"))
from autosarm.__main__ import main

if __name__ == "__main__":
    main()
