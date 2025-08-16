# SubRecon

SubRecon is a simple Bash script that automates the process of subdomain enumeration and live subdomain detection using popular tools like `assetfinder`, `sublist3r`, and `httprobe`.

## 🛠 Features

- Finds subdomains using:
  - [Assetfinder](https://github.com/tomnomnom/assetfinder)
  - [Sublist3r](https://github.com/aboul3la/Sublist3r)
- Merges and filters unique subdomains.
- Probes for live (HTTP/S) subdomains using `httprobe`.
- Saves all results in a structured output directory.

---

## 📦 Requirements

Make sure the following tools are installed:

- `assetfinder`
- `sublist3r`
- `httprobe`
- `bash` (Linux or WSL recommended)
- `sort`, `cat`, `mkdir` (usually pre-installed)

You can install them via:

```bash
# Install assetfinder
go install github.com/tomnomnom/assetfinder@latest

# Install sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip install -r requirements.txt
python setup.py install

# Install httprobe
go install github.com/tomnomnom/httprobe@latest
