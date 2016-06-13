{
    sample_id: {
        type: "string",
        desc: "样本id",
        allow: "",
        index: false,
        level: "D5"
    },
    name_v: {
        type: "string",
        desc: "V基因名称",
        allow: "",
        index: false,
        level: "D5"
    },
    name_j: {
        type: "string",
        desc: "J基因名称",
        allow: "",
        index: false,
        level: "D5"
    },
    num: {
        type: "int",
        desc: "VJ基因使用具体数目",
        allow: "",
        index: false,
        level: "D5"
    },
    freq: {
        type: "float",
        desc: "VJ基因使用频率",
        allow: "0-100",
        index: false,
        level: "D5"
    }
}
