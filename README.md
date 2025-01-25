# Cobertura to Markdown Generator

A GitHub Action that generates Markdown reports from a Cobertura `coverage.xml` file using [Pycobertura](https://pypi.org/project/pycobertura/).

## How to use

### Inputs

- `coverage_file` (required): Path to the `coverage.xml` file.
- `output_file` (optional): Path to save the generated Markdown file (default: `output.md`).


**Example Usage**

```yaml
jobs:
  generate-markdown:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Generate Markdown
        uses: alan-null/cobertura-to-markdown@v1
        with:
          coverage_file: "path/to/coverage.xml"
          output_file: "path/to/output.md"
