(*駅間の接続情報(起点, 終点, 経由, 距離, 所要時間)を格納する*)
type ekikan_t = {
    kiten : string;     (*起点*)
    shuten : string;    (*終点*)
    keiyu : string;     (*経由路線*)
    kyori : float;      (*距離*)
    jikan : int;        (*所要時間*)
}