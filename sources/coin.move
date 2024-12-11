module coin::aptos;

use sui::coin;

public struct APTOS has drop ()

fun init(otw: APTOS, ctx: &mut TxContext) {
    let (mut cap, metadata) = coin::create_currency(
        otw,
        9,
        b"APT",
        b"Aptos",
        b"The second best move chain",
        option::none(),
        ctx,
    );

    transfer::public_transfer(cap, ctx.sender());
    transfer::public_share_object(metadata);
}
