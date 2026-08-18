#!/usr/bin/env python3
import re
lines = open('/workspace/blutter_out/pp.txt', 'rb').read().decode('utf-8', 'ignore').splitlines()
targets = {
    '18efe54b61d73ee5fa8895dbf1': 'https://xdd',
    'c8e70a09296c0dd9edf7a5e89bc8': '/ndsx.php/v7',
    '8ecc9d6446c0bd2af450adf86361de48d53acf647a133094b610adfa64a09dc81ff0': '/recommendVideoList/:recommendId',
    '9eee1bd3e17e5825a338cd3700debb7fb0': '/video/:videoId',
    '35588e594c9480991de4d8cf1abcb0d7722b09020a73bb': 'https://xdd/video?id=',
    '06c813bbbd66304d28776adb5886': '/historyList',
    'b3f0b25c37e1fb75b727': 'sign_md5',
    '5f37e58c485dc3d4182f549db9': 'core_params',
    '44f12d13d498bd4384': 'getSign',
    '1c016881ef99': 'csrf',
    '0c90ebd7fbc644c7eb': 'parse_api',
    '278d08de1779823ad919722c8cc672024a': 'extra_parse_api',
    '114b7183c16a56df47176a90ba18': 'parse_secret',
    'dc6963354c7d33d47c0d64652bedf4e22b7d64f41bdd': 'secret_parse_api_url',
    '2847f1929b264682a4ab': 'deviceId',
    'd51fb54cd07ff2e416': 'channel',
    'f5cf8fd0aaca01df02': 'version',
    '4d65841767e5120eef5a7b297758823e': 'version-number',
    '6f75a1b492acecee82ab70db005d873d8dfb': 'platform-version',
    '2eb52eb24a2be93c': 'appKey',
    '052ee21cd47928d73d7233eca6c8f927ee42601ff698': 'flutter_android_sign',
    'aa66e47210be0056000e406e20828422b44620a6': 'dispatcher_channel',
    'b6cb5f3ee0a2729d404edeb2a1e3': 'main_channel',
    '96b5b776b44b484bb637cbb48b': 'type_extend',
    'eddb348c0819ca962101445cb988fc64b0': 'index_recommend',
    '3b3b4932c4e6f9b39d0e289a6df6d1fa1c0fc13ae48611d3ed8ec912': 'index_recommend_video_list',
    '1432c2853dcaf2ca1d9aada51df5': 'recommend_id',
    '16a5a7fb5bc465c5db841bf29b': 'recommendId',
    '2e5d631ecd35e69b02b8a05a46b562db017a': 'last_login_token',
    '366d57c4d50b54': 'token',
    'e74f79c534bb894c0bf8ac5e6d0c704bfb4692335f1ca0aea5': 'search_history_keywords',
    'cd395f9224190505d34e': 'plus_url',
    'dc86eaf5bac39d431ae21af27ae2': 'last_version',
    '335f741fd1c3e5b61002bca7487b743f80aa': 'advertUrlWebView',
    '390eb3d7e409063d2c03c439ae5b5ce56213a2': '/advertUrlWebView',
    'fef44254faf877676e53a2705e9f56d215e8c214fe7c763ba943a6b0051f5d808eacdd15f5bdb0a4ea': 'decrypt error: secret part parse failed',
}
for h, label in targets.items():
    found = False
    for i, l in enumerate(lines):
        if h in l:
            m = re.search(r'\[pp\+0x([0-9a-fA-F]+)\]', l)
            off = m.group(1) if m else '?'
            print(f'{label:30s} pp+0x{off:>8s}  line {i}  col {l.find(h)}')
            found = True
            break
    if not found:
        print(f'{label:30s} NOT FOUND in pp.txt')
