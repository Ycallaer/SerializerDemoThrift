namespace py dow_jones_index_thrift

struct DowJonesIndex {
    1: required i64                         quarter;          // UTC-milliseconds
    2: required string            stock;
    3: required string               date;
    4: required string        open;
    5: required string    high;
    6: required string         low;
    7: required string         close;
    8: required i64            volume;
    9: optional string         percent_change_price;
    10: optional string        percent_change_volume_over_last_wk;
    11: optional string        previous_weeks_volume;
    12: optional string next_weeks_open;
    13: optional string next_weeks_close;
    14: optional double percent_change_next_weeks_price;
    15: optional i64 days_to_next_dividend;
    16: optional double percent_return_next_dividend;
}

struct DowJonesOutput {
    1: required list<DowJonesIndex> dowjonesresponse;
}