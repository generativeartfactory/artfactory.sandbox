# How-Tos


## How-To Generate "Previev" Strips

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

Or Let's try 3d skulls () @
0xd8a47f76bdca04d1b959cc70d72ae5539812e931

    $ ruby artq.rb 0xd8a47f76bdca04d1b959cc70d72ae5539812e931 layers

and so on.

Nnote: By default for now the layers
get saved into tmp/<addr>/cache.
Rename / move the cache directory to its permanent home.





## (Latest) Download Sources

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


