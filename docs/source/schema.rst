设计模式
===============
    

数据库模式
----------------
    IRD主要存储了项目、样本、测序结果、样本表型、以及样本与比对参考基因的关系。实体关系图如下：
    
    .. image:: https://github.com/PaddyXiao/IRD-docs/blob/master/schema/IRD.png?raw=true
    
    

数据模式
-------------

- sample（包含样本信息、项目信息、测序信息、表型信息）

    形式如下：
    
    `- tables.sample
        - sample
        - project
        - sequence
        - phenotype`
    
    格式如下：

.. literalinclude:: sample.js
    :language: javascript
    :linenos:
    
- cdr3_aa

- cdr3_nt

- v

- j

- vj
    
   

