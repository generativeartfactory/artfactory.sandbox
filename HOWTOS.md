# How-Tos


## How-To Generate "Preview" Strips

Step 1 - Download token metadata

    $ ruby artq.rb madcamels token   # or
    $ artq madcamels token


Step 2 - (Re)Generate images via token metadata

    $ ruby artbase.rb madcamels gen   # or
    $ artbase madcamels gen


Step 3 - Generate (preview) strip (composite)

    $ ruby artbase.rb madcamels strip   # or
    $ artbase madcamels strip




## How-To Download "On-Chain" Attributes (To Cache)

Use the artq tool with the layers command:

    $ ruby artq.rb <addr> layers

Let's try 3d phunks (16x16) @ 0x6c1c678428cc3793a53471c9304fc0372594dbbc

    $ ruby artq.rb 0x6c1c678428cc3793a53471c9304fc0372594dbbc layers

Or Let's try 3d skulls (24x24) @
0xd8a47f76bdca04d1b959cc70d72ae5539812e931

    $ ruby artq.rb 0xd8a47f76bdca04d1b959cc70d72ae5539812e931 layers

and so on.


Note: For now by default the layers
get saved into tmp/<addr>/cache.
Rename / move the cache directory to its permanent home (by hand).





## (Latest) Download Sources


**Update on March 10th, 2023**

X Punks (24x24) - 999 items
- 0x0c346c9126ef3e7a8943e5fca69493e272e48bf5
- https://opensea.io/collection/xpunksonchain

Human of Metaverse (24x24) - 5554 items
- 0xb609183a8245c32fa3c60c498bb54010e9ce8e85
- https://opensea.io/collection/onchainhom

Pepe Phunks (24x24)  - 10 000 items
- 0xc00ffeb7cf191c3432ede000478901f99fd53633
- https://opensea.io/collection/pepephunks

Rabbits (36x36)  - 5555 items
- 0x6558cae45b20d2dea47e7564213c3f98973d34fc
- https://opensea.io/collection/bonbon-by-usagi

Bold Ones (32x32)  - 2034 items
- 0xef2b840add7736a71ec13e0477ec1844bbc82550
- https://opensea.io/collection/the-bold-ones


~~Bandits  (SVG, ASCII ART)~~  - 10 000 items    -- note: no traitDetails available? custom contract?
- 0x17fceb2637f89671385b73d8845e46f56b08078b
- https://opensea.io/collection/onchainbandits


**Update on Jan 26th, 2023**


shiba (24x24)  - 126 items
- 0xe6313d1776e4043d906d5b7221be70cf470f5e87
- https://opensea.io/collection/onchainshiba

ecc0s (svg) - 204 items
- 0x94cb646dd34b3b0ff7c116208f7f7ff7ac216079
- https://ecc0s.com/

cutekevin (svg) - 60 items
- 0xb0dc51536e2b4950d7d6667748a6be6fc53c3318
- https://opensea.io/collection/cute-kevin

deathofkevin (32x32) - 81 items
- 0xcce158dd5384b599fc29fe34d83b11ea8fb7a816
- https://opensea.io/collection/death-of-kevin

gmkevin (27x25) - 113 items
- 0xe302f509c4a3729791215f74299f1fa626396e5a
- https://opensea.io/collection/gm-kevin

frogcentral (32x32) - 213 items
- 0x5a8e04a84fb2f6ad4002c824045c7c1bde10cb81
- https://opensea.io/collection/frog-central

pepeblocks (19x25) - 100 items
- 0x0e10e5e978ba4d1af92eb554cd730c9b97f4e571
- https://opensea.io/collection/pepe-blocks

pepeburbpunks (24x24) - 129 items
- 0x897792d16a46f9e70446638bfc6a0d884b741f9b
- https://opensea.io/collection/pepe-burb-punks

novo (24x24) - 37 items
- 0x22a81c80bb6bf4b797acf08351934b46193bddde
- https://opensea.io/collection/onchainnovo


**More Updates**

women
- 0x82e8129dafb2d5f06aeded321fb04628f95ef654
- https://opensea.io/collection/womenonchain
- https://womenonchain.xyz/


smol phunks  => 3dphunks
- 0x6c1c678428cc3793a53471c9304fc0372594dbbc


grimmers
- 0x6255f0e78c520decccb5356d4f51a3df04149a3d
- https://opensea.io/collection/the-grimmers

3d skulls
- 0xd8a47f76bdca04d1b959cc70d72ae5539812e931
- https://opensea.io/collection/anaglyph-3d-skulls

gatekeepers
- 0xda1d2141154d33cb3b1ce9c87002b07bd24908e9
- https://opensea.io/collection/the-gatekeepers-official

cherrynouns
- 0xe8a9189218ccd5aa20aca3398e2324ab01ef3bfd
- https://opensea.io/collection/very-cherry-nouns

chimps
- 0xb1bee499b063ee2663b52bfc7a1372296d94e24d
- https://opensea.io/collection/onchainchimps

people
- 0xcd46fce2daf0f2f5129f74b502667e61b15c89f3
- https://opensea.io/collection/onchainpeople

dickbutts
- 0x9a7d9b8693339f82d65f315f180faa0a558469bd
- https://opensea.io/collection/larvadickbutts

smiley
- 0x844da5d5d3c1929229be1d326933307ce29065a8
- https://opensea.io/collection/merge-smiley-by-wonc

pepitos
- 0x139cf58d69779eea2edc9d0000a8f9d186d89bbb
- https://opensea.io/collection/pepitosnft

nounpepes  => pepes
- 0x25b4e698bfba060728dee0ca851d536020c79866
- https://opensea.io/collection/nounpeepos


Skulls
- <https://etherscan.io/address/0x9251dec8df720c2adf3b6f46d968107cbbadf4d4>
- <>


DOS Phunks
- <https://etherscan.io/address/0x7c2af580f37c23270dd7c52765073c1601c4ad33>
- <https://opensea.io/collection/dos-phunks-nft>


CryptoTeddies
- <https://opensea.io/collection/cryptobabyteddies>
- <https://etherscan.io/address/0x3b84502df3d36ef2e5318bce5a988460cf349304>
- <https://twitter.com/Crypto_Teddies>


Death
- <https://opensea.io/collection/on-chain-death>
- <https://etherscan.io/address/0x247709b606a3c39cb525ef9a4cb9bccc25b92038>



Mad Masks
- <https://opensea.io/collection/mad-masks>
- <https://etherscan.io/address/0x7915bf033126fa5fcc4dfa79f9bdd5717ed4ce40>
- <https://madmasks.io/>
- <https://twitter.com/MadMasksNFT>

> There are 12 main mask forms in 4 colour variations totalling 48 masks with various traits.
>
> Only 12 of these incredibly rare and elusive 1/1s exist in the collection.


Long Live Kevin
- <https://opensea.io/collection/long-live-kevin>
- <https://etherscan.io/address/0x8ae5523f76a5711fb6bdca1566df3f4707aec1c4>


