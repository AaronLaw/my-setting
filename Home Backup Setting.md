Home Backup Setting
====

Be procrastinating for a year, I setup my own backup system on computers in home tonight. KISS and take action. (2018-08-24)


## Purpose 目的
@@ Should be a minimalism setup. Low cost, convenient, simple software interface, powerful and headless. Once setup is done, forgiveness is given to the user who forget how the backup system works. @@

Though this setup doesn't follow [the 3-2-1 backup rule] (3 copies on 2 media types with 1 offsite.)(https://www.google.com/search?ei=KiKAW7GpEIqA-QaTjaHQDA&q=the+3-2-1+backup+rule&oq=the+3-2-1+backup+rule) and don't care about [backup rotation](), however, it's easy to extend to follow the rule, and in fact, it's better than nothing when data loss occurs.

## 材料
* Software:
    * [RaiDrive](https://www.raidrive.com/)
    * ~~Areca Backup~~ [Duplicati](https://www.duplicati.com/) for file level backup. (it was introduced in https://www.evernote.com/shard/s11/sh/7c731f2b-590a-4ee1-92a6-964ed8d3bf34/dfd8d0d4113795ea6f51e3e77623f9be)
    * [Veeam Backup](https://go.veeam.com/) [#](https://www.veeam.com/windows-cloud-server-backup-agent.html) for system level backup (Image based, Disk imaging/cloning). It provides full system imaging and bare metal recovery.
* Storage:
    * A 1TB+ external harddisk ([2 to 3 times larger than the computer storage size](https://thenextweb.com/businessapps/2015/01/24/complete-guide-backing-computer-properly/)), or
    * A cloud drive (that always on), such as Google Drive (HKD 15 per month for 100GB.)
* Remark:
    * Areca Backup is replaced on my list due to the complexity on setting up and interface, not really reliable, plus I don't like Java.
    * You can always pick software you like in https://alternativeto.net/tag/schedule-backup/
    * [Timeshift](https://alternativeto.net/software/timeshift/), which was introduced in LinuxMint 19, for Linux.

### Questions: 
    
* 2018-08-24: Slow on dedupe? Duplicati does support multithread since [v2.0.3.6-2.0.3.6_canary_2018-04-23](https://github.com/duplicati/duplicati/releases/tag/v2.0.3.6-2.0.3.6_canary_2018-04-23)
    * Google: duplicati multithread -> [Duplicati forum: Is Duplicati2 mutlithread?](https://forum.duplicati.com/t/is-duplicati-2-multithread/2538) -> [v2.0.3.6-2.0.3.6_canary_2018-04-23](https://github.com/duplicati/duplicati/releases/tag/v2.0.3.6-2.0.3.6_canary_2018-04-23)
    
* 2018-08-25: What if a backup file was broken/missing/deleted (in the backup set)?
    * While Duplicati is very robust in handling errors (including missing destination files) there may come a time when you need to remove references to backup versions from your job. What if a backup file was broken/missing/deleted (in the backup set) (maybe the target harddisk has a bad sector and a backup file cannot be read, etc...)? -> https://forum.duplicati.com/search?q=missing%20a%20backup%20files
        * -> https://forum.duplicati.com/t/how-to-list-purge-broken-files/3884
        * -> https://forum.duplicati.com/t/what-happens-when-a-backup-is-deleted-manually/4148
    * RTFM: TODO: [Disaster Recovery](https://duplicati.readthedocs.io/en/latest/08-disaster-recovery/)

* 2018-08-25: With a 'mesh up test' performed (a.k.a I set 2 backup task on 2 computers, and each task points to the same folder in Google Drive) preformed, ~~it is better to give each task a separate folder~~ Duplicati needs each backup task in a each folder. Otherwise, both the backup task will fail and meshed up with error. (This result is logical: A backup task keeps its own .sqlite database and a set of dlist files as index. What if another tasks perform tasks on theses files? It's a diserse.)

* 2018-08-26: What if a disk full? Can I delete some old backup manually?
    * Duplicati forum: delete old backup manually & Google: duplicati delete old backup manually
        * furture reading: Google: duplicati how to clean out -> duplicati how to clear out disk full -> duplicati delete backup -> duplicati delete backup clear out

## 過程
@@ Expected result: A set of compressed backup package/file placed in the target drives automatically. And it's easy to restore when restaration is needed.

### Setup

1. Setup RaiDrive on computer.
2. Setup Duplicati & Veeam Backup
3. Write down what this backup folder does in the target drive as a reminder titled README.md to remind yourself.

### Test

1. Test on the setting (what parameters could I use: for effient on time & space)
    * Do it right and then do it better.
2. Test on restoration of data.
    * Restore from another computer (a.k.a assume what if the original computer is broken?) and compare the restored data and the source.

## Extra
It's fun to sync all of my documents/ebook among all the devices of mime with [Syncthing](https://syncthing.net/).

In global setting:

    --blocksize=1MB
    --dblock-size=200MB
    --number-of-retries=5
    --zip-compression-zip64=true
    --zip-compression-method=LZMA
    --compression-module=LZMA
    --concurrency-max-threads=0 # 0 for dynamic balance
    --concurrency-block-hashers=4
    --concurrency-compressors=4

    # for using zip # In command line, run `help zip` to see what argunment it takes
    --zip-compression-method=LZMA
    --zip-compression-zip64=True # for files larger than 4GB

    # for using 7z # In command line, run `help 7z` to see what argunment it takes
    --compression-module=~~zip~~7z
    --lzma-thread-count=4
    --7z-compression-level=6


Reference:

* https://www.backblaze.com/blog/the-3-2-1-backup-strategy/
* https://lifehacker.com/5961216/why-you-should-have-more-than-one-backup
* https://www.anotherwindowsblog.com/2017/01/windows-backup-hdd-migration-with-free-veeam-endpoint.htm

2018-08-24

----
> * --zip-compression-zip64=true
> * --zip-compression-method=LZMA
> * --blocksize=1MB
> * --concurrency-max-threads=4
> * --concurrency-block-hashers=4
> * --concurrency-compressors=4




* 書寫一個質能守恒公式[^LaTeX]:

$$E=mc^2$$

* 或者高亮一段 `代碼` [^code]：

``` python
import random
@requires_authorization
def hello():
    pass
```

tag: Cmd-Markdon
##Cmd-Markdown##

Reference:
* https://www.zhihu.com/question/19637157/answer/151852635