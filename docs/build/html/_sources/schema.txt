设计模式
===============
    

数据库模式
----------------
    IRD主要存储了项目、样本、测序结果、样本表型、以及样本与比对参考基因的关系。实体关系图如下：
    
    .. image:: https://github.com/PaddyXiao/IRD-docs/blob/master/schema/IRD.png?raw=true
    
    

数据模式
-------------

- sample

.. code-block:: json
    :linenos:
    {
        sample_id: {
            type: "string",
            desc: "样本编号",
            allow: "",
            index: true,
            level: "D5"
        },
        sample_name: {
            type: "string",
            desc: "样本名称",
            allow: "",
            index: false,
            level: "D5"
        },
        project: {
            name: {
                type: "string",
                desc: "项目名称",
                allow: "",
                index: false,
                level: "D5"
            },
            sample_num: {
                type: "string",
                desc: "组成样本数",
                allow: "",
                index: false,
                level: "D5"
            },
            type: {
                type: "string",
                desc: "项目类型",
                allow: [
                    "TCR",
                    "BCR"
                ],
                index: false,
                level: "D5"
            },
            desc: {
                type: "string",
                desc: "项目描述",
                allow: "",
                index: false,
                level: "D5"
            }
        },
        sample_type: {
            type: "string",
            desc: "样本类型",
            allow: [
                "PBMC",
                "whole_blood",
                "lymphoid_tissue",
                "non-lymphoid_tissue"
            ],
            index: false,
            level: "D5"
        },
        species: {
            type: "string",
            desc: "样本所属物种",
            allow: "",
            index: false,
            level: "D5"
        },
        seq_type: {
            type: "string",
            desc: "测序样本类型",
            allow: [
                "DNA",
                "RNA"
            ],
            index: false,
            level: "D5"
        },
        locus: {
            type: "string",
            desc: "目标序列类型",
            allow: [
                "TRCAD",
                "TRCG",
                "TCRB",
                "IGH",
                "IGL",
                "IGK"
            ],
            index: false,
            level: "D5"
        },
        method: {
            type: "string",
            desc: "分析方法",
            allow: [
                "IMonitor"
            ],
            index: false,
            level: "D5"
        },
        method_para: {
            type: "string",
            desc: "流程方法的具体参数",
            allow: "",
            index: false,
            level: "D3"
        },
        primer_set: {
            type: "string",
            desc: "引物名称",
            allow: "",
            index: false,
            level: "D5"
        },
        time: {
            type: "date",
            desc: "取样时间",
            allow: "",
            index: false,
            level: "D5"
        },
        amount_ng: {
            type: "float",
            desc: "样本量（ng）",
            allow: "",
            index: false,
            level: "D5"
        },
        platforms: {
            type: "string",
            desc: "测序平台",
            allow: [
                "Hiseq",
                "Proten",
                "Zebra",
                "Miseq"
            ],
            index: false,
            level: "D5"
        },
        in_frame_percentage: {
            type: "float",
            desc: "in frame数据百分比",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        total_in_frame_reads: {
            type: "float",
            desc: "in frame reads数",
            allow: ">0",
            index: false,
            level: "D5"
        },
        out_frame_percentage: {
            type: "float",
            desc: "out frame数据百分比",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        total_out_frame_percentage: {
            type: "float",
            desc: "out frame reads数",
            allow: ">0",
            index: false,
            level: "D5"
        },
        stop_codon_percentage: {
            type: "float",
            desc: "含有终止密码子数据百分比",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        total_stop_reads: {
            type: "float",
            desc: "含有终止密码子reads数",
            allow: ">0",
            index: false,
            level: "D5"
        },
        v_alignment: {
            type: "float",
            desc: "V基因比对率",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        d_alignment: {
            type: "float",
            desc: "D基因比对率",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        j_alignment: {
            type: "float",
            desc: "J基因比对率",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        vj_alignment: {
            type: "float",
            desc: "VJ基因比对率",
            allow: "0-100",
            index: false,
            level: "D5"
        },
        cdr3_nt_productive_entropy: {
            type: "float",
            desc: "有效数据CDR3 NT的香农熵",
            allow: "0-30",
            index: false,
            level: "D5"
        },
        cdr3_aa_productive_entropy: {
            type: "float",
            desc: "有效数据CDR3 AA的香农熵",
            allow: "0-30",
            index: false,
            level: "D5"
        },
        seq_nt_uniq_number: {
            type: "float",
            desc: "碱基序列unique number",
            allow: ">0",
            index: false,
            level: "D5"
        },
        seq_aa_uniq_number: {
            type: "float",
            desc: "氨基酸序列unique number",
            allow: ">0",
            index: false,
            level: "D5"
        },
        cdr3_nt_uniq_number: {
            type: "string",
            desc: "CDR3 NT unique number",
            allow: ">0",
            index: false,
            level: "D5"
        },
        cdr3_aa_uniq_number: {
            type: "float",
            desc: "CDR3 AA unique number",
            allow: ">0",
            index: false,
            level: "D5"
        },
        sequence_result_status: {
            type: "string",
            desc: "数据录入时的状态",
            allow: [
                "published",
                "unpublished"
            ],
            index: false,
            level: "D5"
        },
        upload_date: {
            type: "date",
            desc: "样本对应序列上传时间",
            allow: "",
            index: false,
            level: "D5"
        },
        related_articles: {
            type: "string",
            desc: "与样本相关的相关文献",
            allow: "",
            index: false,
            level: "D5"
        },
        sequence_result: [
            {
                frame_type: {
                    type: "string",
                    desc: "序列类型",
                    allow: [
                        "in-frame",
                        "out-frame"
                    ],
                    index: false,
                    level: "D5"
                },
                v_ref: {
                    type: "string",
                    desc: "对比到的V基因",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_ref: {
                    type: "string",
                    desc: "对比到的D基因",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_ref: {
                    type: "string",
                    desc: "对比到的J基因",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                cdr3_start: {
                    type: "int",
                    desc: "CDR3起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                cdr3_end: {
                    type: "int",
                    desc: "CDR3终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                cdr3_nt: {
                    type: "string",
                    desc: "CDR3碱基序列",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                chr3_aa: {
                    type: "string",
                    desc: "CDR3氨基酸序列",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                3v_del: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                5d_del: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                3d_del: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                5j_del: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                vd_ins: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                dj_ins: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                vj_ins: {
                    type: "string",
                    desc: "保存插入删除信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                strand: {
                    type: "string",
                    desc: "序列的方向",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                sequence: {
                    type: "string",
                    desc: "碱基序列",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                amino_acid: {
                    type: "string",
                    desc: "氨基酸序列",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_info: {
                    type: "string",
                    desc: "V区比对信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_rate: {
                    type: "float",
                    desc: "V区比对率",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_length: {
                    type: "int",
                    desc: "V区比对长度",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_mis: {
                    type: "int",
                    desc: "V区比对mismatch数",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_start: {
                    type: "int",
                    desc: "V基因比对起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comparison_end: {
                    type: "int",
                    desc: "V基因比对终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_V_start: {
                    type: "int",
                    desc: "序列比对到ref起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_V_end: {
                    type: "int",
                    desc: "序列比对到ref终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comp_p: {
                    type: "float",
                    desc: "检验值",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                v_comp_grade: {
                    type: "float",
                    desc: "评分",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_info: {
                    type: "string",
                    desc: "D区比对信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_rate: {
                    type: "float",
                    desc: "D区比对率",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_length: {
                    type: "int",
                    desc: "D区比对长度",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_mis: {
                    type: "int",
                    desc: "D区比对mismatch数",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_start: {
                    type: "int",
                    desc: "D基因比对起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comparison_end: {
                    type: "int",
                    desc: "D基因比对终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_d_start: {
                    type: "int",
                    desc: "序列比对到ref起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_d_end: {
                    type: "int",
                    desc: "序列比对到ref终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comp_p: {
                    type: "float",
                    desc: "检验值",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                d_comp_grade: {
                    type: "float",
                    desc: "评分",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_info: {
                    type: "string",
                    desc: "J区比对信息",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_rate: {
                    type: "float",
                    desc: "J区比对率",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_length: {
                    type: "int",
                    desc: "J区比对长度",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_mis: {
                    type: "int",
                    desc: "J区比对mismatch数",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_start: {
                    type: "int",
                    desc: "J基因比对起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comparison_end: {
                    type: "int",
                    desc: "J基因比对终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_j_start: {
                    type: "int",
                    desc: "序列比对到ref起始位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                seq_comp_j_end: {
                    type: "int",
                    desc: "序列比对到ref终止位置",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comp_p: {
                    type: "float",
                    desc: "检验值",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                j_comp_grade: {
                    type: "float",
                    desc: "评分",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                mutation: {
                    type: "float",
                    desc: "突变率",
                    allow: "",
                    index: false,
                    level: "D5"
                },
                isotype: {
                    type: "string",
                    desc: "",
                    allow: [
                        "IGHA",
                        "IGHD",
                        "IGHE",
                        "IGHG",
                        "IGHM",
                        "unknown"
                    ],
                    index: false,
                    level: "D5"
                },
                
            },
            
        ],
        disease: {
            name: {
                type: "string",
                desc: "疾病名称",
                allow: "",
                index: false,
                level: "D5"
            },
            pathogenic_clone: {
                type: "string",
                desc: "疾病相关克隆",
                allow: "",
                index: false,
                level: "D5"
            },
            related_articles: {
                type: "string",
                desc: "相关报导文件",
                allow: "",
                index: false,
                level: "D5"
            }
        },
        phenotype: {
            inform: {
                type: "string",
                desc: "是否有知情同意书",
                allow: "",
                index: false,
                level: "D5"
            },
            date: {
                type: "date",
                desc: "采样时间",
                allow: "",
                index: false,
                level: "D5"
            },
            sample_type: {
                type: "string",
                desc: "样本类型",
                allow: "",
                index: false,
                level: "D5"
            },
            gender: {
                type: "string",
                desc: "性别",
                allow: "",
                index: false,
                level: "D5"
            },
            age: {
                type: "int",
                desc: "年龄",
                allow: "",
                index: false,
                level: "D5"
            },
            race: {
                type: "string"desc: "民族",
                allow: "",
                index: false,
                level: "D5"
            },
            height: {
                type: "float",
                desc: "身高",
                allow: "",
                index: false,
                level: "D5"
            },
            weight: {
                type: "float",
                desc: "体重",
                allow: "",
                index: false,
                level: "D5"
            },
            BMI: {
                type: "float",
                desc: "身高体重指数",
                allow: "",
                index: false,
                level: "D5"
            },
            waist: {
                type: "float",
                desc: "腰围",
                allow: "",
                index: false,
                level: "D5"
            },
            hip: {
                type: "float",
                desc: "臀围",
                allow: "",
                index: false,
                level: "D5"
            },
            whr: {
                type: "float",
                desc: "腰臀比",
                allow: "",
                index: false,
                level: "D5"
            },
            blood_pressure: {
                type: "float",
                desc: "血压",
                allow: "",
                index: false,
                level: "D5"
            },
            fast_glucose: {
                type: "float",
                desc: "空腹血糖",
                allow: "",
                index: false,
                level: "D5"
            },
            blood_lipids: {
                type: "float",
                desc: "血脂",
                allow: "",
                index: false,
                level: "D5"
            },
            t2d: {
                type: "bool",
                desc: "是否有二型糖尿病",
                allow: [
                    true,
                    false
                ],
                index: false,
                level: "D5"
            }
        }
    }
   

