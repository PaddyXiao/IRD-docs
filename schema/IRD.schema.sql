DROP TABLE if EXISTS projects;
CREATE TABLE projects(
	project_id varchar(45),
	project_name varchar(45),
	sample_num varchar(45),
	project_seq_type varchar(45),
	publish_time date,
	project_type varchar(45),
	description varchar(45),
	pmid varchar(45)
);

DROP TABLE if EXISTS samples;
CREATE TABLE samples(
	sample_id varchar(45),
	project_id varchar(45),
	sample_name varchar(45),
	sequence_result_id varchar(45),
	sample_type varchar(45),
	species varchar(45),
	sample_seq_type varchar(45),
	locus varchar(45),
	method varchar(45),
	method_para varchar(45),
	primer_set varchar(45),
	sample_time date,
	sample_amount_ng float,
	sequencing_platforms varchar(45),
	in_frame_percentage float,
	total_in_frame_reads float,
	out_frame_percentage float,
	total_out_frame_reads float,
	stop_codon_percentage float,
	total_stop_reads float,
	v_alignment float,
	d_alignment float,
	j_alignment float,
	vj_alignment float,
	cdr3_nt_productive_entropy float,
	cdr3_aa_productive_entropy float,
	seq_nt_uniq_number float,
	seq_aa_uniq_number float,
	cdr3_nt_uniq_number float,
	cdr3_aa_uniq_number float,
	sequence_result_status varchar(45),
	sampling_time date,
	related_articles varchar(45)
);

DROP TABLE if EXISTS sequences;
CREATE TABLE sequences(
	sequence_result_id varchar(45),
	frame_type varchar(45),
	v_ref varchar(45),
	d_ref varchar(45),
	j_ref varchar(45),
	cdr3_start int,
	cdr3_end int,
	cdr3_nt varchar(45),
	cdr3_aa varchar(45),
	3v_del varchar(45),
	5d_del varchar(45),
	3d_del varchar(45),
	5j_del varchar(45),
	vd_ins varchar(45),
	dj_ins varchar(45),
	vj_ins varchar(45),
	strand varchar(45),
	sequence varchar(45),
	amino_acid varchar(45),
	v_comparison_info varchar(45),
	v_comparison_rate float,
	v_comparison_length int,
	v_comparison_mis int,
	v_comparison_start int,
	v_comparison_end int,
	seq_comp_v_start int,
	seq_comp_v_end int,
	v_comp_p float,
	v_comp_grade float,
	d_comparison_info varchar(45),
	d_comparison_rate float,
	d_comparison_length int,
	d_comparison_mis int,
	d_comparison_start int,
	d_comparison_end int,
	seq_comp_d_start int,
	seq_comp_d_end int,
	d_comp_p float,
	d_comp_grade float,
	j_comparison_info varchar(45),
	j_comparison_rate float,
	j_comparison_length int,
	j_comparison_mis int,
	j_comparison_start int,
	j_comparison_end int,
	seq_comp_j_start int,
	seq_comp_j_end int,
	j_comp_p float,
	j_comp_grade float,
	mutation float,
	isotype varchar(45)
);

DROP TABLE if EXISTS V_gene_usage;
CREATE TABLE V_gene_usage(
	sample_id varchar(45),
	v_ref_id varchar(45),
	v_ref__name varchar(45),
	v_usage_num int,
	v_usage_rate float
);

DROP TABLE if EXISTS J_gene_usage;
CREATE TABLE J_gene_usage(
	sample_id varchar(45),
	j_ref_id varchar(45),
	j_ref__name varchar(45),
	j_usage_num int,
	j_usage_rate float
);

DROP TABLE if EXISTS VJ_gene_usage;
CREATE TABLE VJ_gene_usage(
	sample_id varchar(45),
	v_ref__name varchar(45),
	j_ref__name varchar(45),
	vj_usage_num int,
	vj_usage_rate float
);

DROP TABLE if EXISTS CDR3_AA;
CREATE TABLE CDR3_AA(
	sample_id varchar(45),
	cdr3_aa_seq varchar(45),
	cdr3_aa_num int,
	cdr3_aa_freq float
);

DROP TABLE if EXISTS CDR3_NT;
CREATE TABLE CDR3_NT(
	sample_id varchar(45),
	cdr3_nt_seq varchar(45),
	cdr3_nt_num int,
	cdr3_nt_freq float
);

DROP TABLE if EXISTS V_ref;
CREATE TABLE V_ref(
	v_ref_id varchar(45),
	species varchar(45),
	v_ref_name varchar(45),
	v_ref_seq varchar(45)
);

DROP TABLE if EXISTS J_ref;
CREATE TABLE J_ref(
	j_ref_id varchar(45),
	species varchar(45),
	j_ref_name varchar(45),
	j_ref_seq varchar(45)
);

DROP TABLE if EXISTS diseases;
CREATE TABLE diseases(
	disease_id varchar(45),
	disease_name varchar(45),
	pathogenic_clone varchar(45),
	related_articles varchar(45)
);

DROP TABLE if EXISTS sample_disease_info;
CREATE TABLE sample_disease_info(
	info_id varchar(45),
	disease_id varchar(45),
	sample_id varchar(45)
);

DROP TABLE if EXISTS users;
CREATE TABLE users(
	user_id varchar(45),
	user_name varchar(45),
	email varchar(45),
	phone varchar(45),
	password varchar(45),
	registration_date date,
	user_level varchar(45),
	user_type varchar(45),
	company_name varchar(45)
);

DROP TABLE if EXISTS phenotype;
CREATE TABLE phenotype(
	sample_id varchar(45),
	project_id varchar(45),
	inform varchar(45),
	date date,
	sample_type varchar(45),
	gender varchar(45),
	age int,
	race varchar(45),
	height float,
	weight float,
	bmi float,
	waist float,
	hip float,
	whr float,
	blood_pressure float,
	fast_glucose float,
	blood_lipids float,
	t2d bool
);

