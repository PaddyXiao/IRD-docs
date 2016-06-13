{
    sample_id: {
        type: "string",
        desc: "样本id",
        allow: "",
        index: false,
        level: "D5"
    },
    species: {
        type: "string",
        desc: "物种名称",
        allow: "",
        index: false,
        level: "D5"
    },
    name: {
        type: "string",
        desc: "V基因名称",
        allow: "",
        index: false,
        level: "D5"
    },
    seq: {
        type: "string",
        desc: "V参考基因碱基序列",
        allow: "",
        index: false,
        level: "D5"
    },
    num: {
        type: "int",
        desc: "V基因使用具体数目",
        allow: "",
        index: false,
        level: "D5"
    },
    freq: {
        type: "float",
        desc: "V基因使用频率",
        allow: "0-100",
        index: false,
        level: "D5"
    }
}
