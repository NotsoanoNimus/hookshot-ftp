# Hookshot - An Anonymous-only FTP Scanner 🔎➡️💾🥰
<img width="180" height="156" alt="image" src="https://github.com/user-attachments/assets/cdcb856b-1f83-4aaf-bb93-82dc07c710b6" />

Let freedom ring! 🔔 Scan and copy anonymous FTP server data to your local disk 💿, and leave a note 📓 behind if you're feeling nice. 🤗

This tool allows you to set up an automated client to scrape the internet for **anonymous** FTP servers, copy their data (_if you specifically choose to_), compress it locally (_if you specifically choose to_), and notify the server of its nakedness. You can also get notifications (_if you specifically choose to_)! 📫

_"The choices are yours and yours alone!"_ 🗿

Before proceeding, please consider the ethics of choosing to opt into the `--scrape` or `--silencer` options at runtime, listed below.


## Features & Usage ✨
A list of features, in no particular order:
- ☑️ Threaded and independent scanning, downloading, uploading, etc.
- ☑️ Compression of incoming content for efficient storage.
- ☑️ Limitations on scraped data size (i.e., disk-overconsumption resistance).
- ☑️ Send an email notification when a new target is discovered.
- ☑️ Alternate-port scanning. Scan for FTP services on more than just port 21.
- ☑️ Specific selection of IPv4-only, IPv6-only, or both.
- ☑️ Specify IP ranges to search within (required for IPv6 scanning).
- ☑️ Statistics tracking (amount of servers visited, ports tried, etc.).
- ☑️ Maintain a list of discovered targets, so they aren't "discovered" again. _Clear_ this list at any time. _Export it_ to report it to someone with more authority.

(usage guide coming soon)


## Stop! 🛑
Hi! Welcome to an ethical gray area - you've successfully placed yourself in the epicenter of a moral dilemma by considering the use of this tool. 👏

📣 📣 📣 **THE MAINTAINERS OF THIS SOFTWARE ARE NOT RESPONSIBLE FOR WHAT YOU DO WITH IT. YOU REALLY SHOULDN'T USE THIS WITH THE `--scrape` OPTION; THIS IS SOMETIMES PEOPLE'S VERY PERSONAL DATA.** This must be explicitly noted: it is the sole responsibility of the host of an FTP server and its data to secure it against unauthorized access. Access to an **anonymous** FTP server is _not_ (and by definition cannot be) considered unauthorized. This tool defaults to both (1) _immediately_ notifying server administrators, in good faith, of the affected server's public visibility via a file upload; and (2) leaving the data untouched (and un-downloaded). This tool ___does not___ provide the capabilities for brute-force or other means of **unauthorized** FTP server access; that is _illegal_.

❗ **HEY, THIS IS ALSO IDEAL FOR EDUCATIONAL PURPOSES.** ❗
It sounds like a cop-out; it's not. This tool is a harmless, **hacker-lite**, imagination-less, trivial demonstration of complex and real-world adversarial tools that malicious actors would use. As such, it's _great_ for showing _exactly how_ a real hacker might craft a tool that can do actual harm.

The following actions of this tool are **opt-in only**, meaning you have **consciously chosen** to use them.
- The `--scrape` option, which _clones all remote data_ to a local storage medium before notifying the remote server.
  - This is effectively copying data which you are authorized to \[anonymously\] access.
- The `--silencer` option, which _suppresses the good-faith upload of the anonymous-access notification_ to the remote server.
  - This is a bit mean-spirited, but is provided in case the local workstation has upload limits, or the remote server cannot accept anonymous writes.


## Building & Running 🤖
You can simply download a Release package for your operating system, if you'd like to get the job done quickly.

If you're the more meticulous, cautious, or cozy-vibes type, here's how you can build this:
1. Clone and build (or just install) the [C3 compiler](https://github.com/c3lang/c3c).
2. Clone this repo and change your working directory to it.
3. Run `c3c build` (or `c3c.exe` for Windows users) to build the final application.

Once you have a runnable executable, simple type `hookshot --help` to get started.
