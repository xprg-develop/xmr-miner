## xmr-miner

使用するDockerfileのEVNの値を設定、もしくはenvファイル作成で下記3つを設定

|XMR_POOL_URL |マイニングプールURL(pool.supportxmr.com:443以外で未検証) |
|-------------|-------------------------------------------------------|
|XMR_USER     |Monero Address                                         |
|XMR_PASS     |Worker Name                                            |

## Run

起動例
```sh
docker run -dit --rm --name xmr xmr-miner
docker run -dit --rm --cpuset-cpus 1,3 --name xmr xmr-miner
docker run -dit --rm --env-file=.env --name xmr xmr-miner
```
CPU使用ナンバーは使用環境に合わせて変更、なしだと全て使用

### Donate

- XMR: `48HiMEtx7ecBeXQeQq6hDJB8w5U79t8Hy24dnj29gBh99Vvcg8mQtfVaxDYr9CmpkaCTQCrExEfhRitFgcrq5mus394HHhx`
- ETH: `0xdcBDf7E4EFaD898232717d9f5b4Df2F58639B198` (or ERC-20)
