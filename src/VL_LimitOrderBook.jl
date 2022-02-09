module VL_LimitOrderBook
using AVLTrees
using Base: @kwdef
using Printf
include("orderqueue.jl")
include("sidebook.jl")
include("book.jl")
include("ordermatching.jl")
include("moneydata.jl")
export BUY_ORDER, SELL_ORDER, VANILLA_FILLTYPE, IMMEDIATEORCANCEL_FILLTYPE, FILLORKILL_FILLTYPE
export OrderBook, Order, OrderTraits, AcctMap, OrderSide
export Monetary, AssetMismatch
export submit_order!,
    submit_limit_order!,
    cancel_order!,
    submit_market_order!,
    submit_market_order_byfunds!,
    clear_book!,
    book_depth_info,
    volume_bid_ask,
    best_bid_ask,
    n_orders_bid_ask,
    bid_orders,
    ask_orders,
    get_acct,
    write_csv,
    process_file,
    order_types
end