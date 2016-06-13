{
    sample_id: {
        type: "string",
        desc: "样本id",
        allow: "",
        index: false,
        level: "D5"
    },
    seq: {
        type: "string",
        desc: "CDR3氨基酸序列",
        allow: "",
        index: false,
        level: "D5"
    },
    num: {
        type: "int",
        desc: "CDR3序列数目",
        allow: "",
        index: false,
        level: "D5"
    },
    freq: {
        type: "float",
        desc: "CDR3丰度",
        allow: "0-100",
        index: false,
        level: "D5"
    }
}
