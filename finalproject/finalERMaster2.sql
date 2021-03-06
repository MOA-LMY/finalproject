
/* Drop Tables */

DROP TABLE attendance CASCADE CONSTRAINTS;
DROP TABLE authorities CASCADE CONSTRAINTS;
DROP TABLE reviewreply CASCADE CONSTRAINTS;
DROP TABLE reviewboard CASCADE CONSTRAINTS;
DROP TABLE basketlist CASCADE CONSTRAINTS;
DROP TABLE basket CASCADE CONSTRAINTS;
DROP TABLE boardreply CASCADE CONSTRAINTS;
DROP TABLE boardlayout CASCADE CONSTRAINTS;
DROP TABLE boardcategory CASCADE CONSTRAINTS;
DROP TABLE gcs CASCADE CONSTRAINTS;
DROP TABLE color CASCADE CONSTRAINTS;
DROP TABLE couponbox CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE sales CASCADE CONSTRAINTS;
DROP TABLE pay CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE delinfo CASCADE CONSTRAINTS;
DROP TABLE event CASCADE CONSTRAINTS;
DROP TABLE FAQ CASCADE CONSTRAINTS;
DROP TABLE goodsdetail CASCADE CONSTRAINTS;
DROP TABLE storages CASCADE CONSTRAINTS;
DROP TABLE goods CASCADE CONSTRAINTS;
DROP TABLE goodscategory CASCADE CONSTRAINTS;
DROP TABLE pet CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE partners CASCADE CONSTRAINTS;
DROP TABLE petsearch CASCADE CONSTRAINTS;
DROP TABLE sizes CASCADE CONSTRAINTS;
DROP TABLE training CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE attendance
(
	att_id varchar2(20) NOT NULL,
	att_point number,
	att_date date,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (att_id)
);


CREATE TABLE authorities
(
	authority varchar2(30),
	id varchar2(30)
);


CREATE TABLE basket
(
	bs_num number NOT NULL,
	bs_ea number,
	bs_price number,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (bs_num)
);


CREATE TABLE basketlist
(
	bk_num number NOT NULL,
	bk_totalprice number,
	bk_ea number,
	bs_num number NOT NULL,
	o_num number NOT NULL,
	gcs_num number NOT NULL,
	PRIMARY KEY (bk_num)
);


CREATE TABLE boardcategory
(
	b_code number NOT NULL,
	b_name varchar2(20),
	PRIMARY KEY (b_code)
);


CREATE TABLE boardlayout
(
	bl_num number NOT NULL,
	bl_writer varchar2(20),
	bl_title varchar2(50),
	bl_content varchar2(500),
	bl_orgimg varchar2(500),
	bl_saveimg varchar2(500),
	bl_date date,
	bl_hit number,
	bl_pwd number,
	m_id varchar2(20) NOT NULL,
	b_code number NOT NULL,
	PRIMARY KEY (bl_num)
);


CREATE TABLE boardreply
(
	br_num number NOT NULL,
	br_ref number,
	br_level number,
	br_content number,
	br_date date,
	bl_num number NOT NULL,
	PRIMARY KEY (br_num)
);


CREATE TABLE color
(
	c_subnum number NOT NULL,
	c_num number NOT NULL,
	c_colorname varchar2(100),
	c_colorcode varchar2(100),
	PRIMARY KEY (c_subnum)
);


CREATE TABLE couponbox
(
	c_code varchar2(100) NOT NULL,
	c_ea number NOT NULL,
	c_usedcoupon number,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (c_code)
);


CREATE TABLE delinfo
(
	d_num number NOT NULL,
	d_recname varchar2(20),
	d_recphone varchar2(20),
	d_recaddr varchar2(200),
	d_recdetailaddr varchar2(200),
	d_mainaddr number,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (d_num)
);


CREATE TABLE event
(
	e_code varchar2(100) NOT NULL,
	e_name varchar2(50),
	e_content varchar2(500),
	e_point number,
	e_discount number,
	e_startdate date,
	e_enddate date,
	e_orgimg varchar2(500),
	e_saveimg varchar2(500),
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (e_code)
);


CREATE TABLE FAQ
(
	f_num number NOT NULL,
	f_title varchar2(100),
	f_answer varchar2(1000),
	PRIMARY KEY (f_num)
);


CREATE TABLE gcs
(
	gcs_num number NOT NULL,
	g_num number NOT NULL,
	c_subnum number NOT NULL,
	sz_ssubnum number NOT NULL,
	PRIMARY KEY (gcs_num)
);


CREATE TABLE goods
(
	g_num number NOT NULL,
	g_name varchar2(50),
	g_price number,
	g_content varchar2(300),
	g_orgimg varchar2(100),
	g_saveimg varchar2(100),
	g_regdate date,
	g_hit number,
	g_ea number,
	gc_num number NOT NULL,
	PRIMARY KEY (g_num)
);


CREATE TABLE goodscategory
(
	gc_num number NOT NULL,
	gc_name varchar2(100),
	gc_subnum number NOT NULL,
	PRIMARY KEY (gc_num)
);


CREATE TABLE goodsdetail
(
	gd_num number NOT NULL,
	gd_orgimg1 varchar2(500),
	gd_saveimg1 varchar2(500),
	gd_orgimg2 varchar2(500),
	gd_saveimg2 varchar2(500),
	gd_orgimg3 varchar2(500),
	gd_saveimg3 varchar2(500),
	g_num number NOT NULL,
	PRIMARY KEY (gd_num)
);


CREATE TABLE members
(
	m_id varchar2(20) NOT NULL,
	m_pwd varchar2(200),
	m_name varchar2(20),
	m_phone varchar2(20),
	m_email varchar2(100),
	m_addr varchar2(200),
	m_detail_addr varchar2(200),
	m_birth varchar2(20),
	m_enabled number,
	m_points number,
	PRIMARY KEY (m_id)
);


CREATE TABLE orderlist
(
	ol_num number NOT NULL,
	ol_totalprice number,
	ol_ea number,
	o_num number NOT NULL,
	gcs_num number NOT NULL,
	PRIMARY KEY (ol_num)
);


CREATE TABLE orders
(
	o_num number NOT NULL,
	o_proccess varchar2(50),
	m_id varchar2(20) NOT NULL,
	d_num number NOT NULL,
	PRIMARY KEY (o_num)
);


CREATE TABLE partners
(
	pt_id varchar2(20) NOT NULL,
	pt_pwd varchar2(200),
	pt_name varchar2(20),
	pt_phone varchar2(20),
	pt_email varchar2(50),
	pt_addr varchar2(200),
	pt_detail_addr varchar2(200),
	pt_code varchar2(20),
	pt_enabled number,
	PRIMARY KEY (pt_id)
);


CREATE TABLE pay
(
	p_num number NOT NULL,
	p_methods varchar2(50),
	p_date date,
	p_totalprice number,
	p_usecoupon number,
	o_num number NOT NULL,
	PRIMARY KEY (p_num)
);


CREATE TABLE pet
(
	pet_num number NOT NULL,
	pet_name varchar2(20),
	pet_age varchar2(50),
	pet_color varchar2(20),
	pet_price number,
	pet_type varchar2(50),
	pet_content varchar2(500),
	pet_orgimg varchar2(500),
	pet_saveimg varchar2(500),
	pt_id varchar2(20) NOT NULL,
	PRIMARY KEY (pet_num)
);


CREATE TABLE petsearch
(
	pets_num number NOT NULL,
	pets_name varchar2(100),
	pets_content varchar2(500),
	PRIMARY KEY (pets_num)
);


-- ?????????????????? ???????????? ???????????? ???????????????.
CREATE TABLE reservation
(
	r_num number NOT NULL,
	r_proccess number,
	r_date date,
	m_id varchar2(20) NOT NULL,
	pet_num number,
	PRIMARY KEY (r_num)
);


CREATE TABLE reviewboard
(
	rb_num number NOT NULL,
	rb_title varchar2(100),
	rb_content varchar2(500),
	rb_date date,
	rb_stars number,
	rb_orgimg varchar2(500),
	rb_saveimg varchar2(500),
	p_num number NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (rb_num)
);

CREATE TABLE reviewreply
(
	rp_num number NOT NULL,
	rp_ref number,
	rp_level number,
	rp_content varchar2(500),
	rp_date date,
	rb_num number NOT NULL,
	PRIMARY KEY (rp_num)
);


CREATE TABLE sales
(
	s_num number NOT NULL,
	s_price number,
	s_date date,
	s_ea number,
	s_tot number,
	p_num number NOT NULL,
	PRIMARY KEY (s_num)
);



CREATE TABLE sizes
(
	sz_ssubnum number NOT NULL,
	sz_sizename varchar2(100),
	sz_snum number NOT NULL,
	PRIMARY KEY (sz_ssubnum)
);


CREATE TABLE storages
(
	st_num number NOT NULL,
	st_ea number,
	st_date date,
	g_num number NOT NULL,
	PRIMARY KEY (st_num)
);


CREATE TABLE training
(
	t_num number NOT NULL,
	t_title varchar2(100),
	t_content varchar2(500),
	PRIMARY KEY (t_num)
);

CREATE TABLE ec
(
	ec_num number NOT NULL,
	e_code varchar2(100) NOT NULL,
	c_code varchar2(100) NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (ec_num)
);





/* Create Foreign Keys */

ALTER TABLE basketlist
	ADD FOREIGN KEY (bs_num)
	REFERENCES basket (bs_num)
ON DELETE CASCADE
;



ALTER TABLE boardlayout
	ADD FOREIGN KEY (b_code)
	REFERENCES boardcategory (b_code)
ON DELETE CASCADE
;


ALTER TABLE boardreply
	ADD FOREIGN KEY (bl_num)
	REFERENCES boardlayout (bl_num)
ON DELETE CASCADE
;


ALTER TABLE gcs
	ADD FOREIGN KEY (c_subnum)
	REFERENCES color (c_subnum)
ON DELETE CASCADE
;


ALTER TABLE pay
	ADD FOREIGN KEY (o_num)
	REFERENCES orders (o_num)
ON DELETE CASCADE
;


ALTER TABLE basketlist
	ADD FOREIGN KEY (gcs_num)
	REFERENCES gcs (gcs_num)
ON DELETE CASCADE
;


ALTER TABLE gcs
	ADD FOREIGN KEY (g_num)
	REFERENCES goods (g_num)
ON DELETE CASCADE
;


ALTER TABLE goodsdetail
	ADD FOREIGN KEY (g_num)
	REFERENCES goods (g_num)
ON DELETE CASCADE
;


ALTER TABLE orderlist
	ADD FOREIGN KEY (gcs_num)
	REFERENCES gcs (gcs_num)
ON DELETE CASCADE
;



ALTER TABLE storages
	ADD FOREIGN KEY (g_num)
	REFERENCES goods (g_num)
ON DELETE CASCADE
;


ALTER TABLE goods
	ADD FOREIGN KEY (gc_num)
	REFERENCES goodscategory (gc_num)
ON DELETE CASCADE
;


ALTER TABLE goodscategory
	ADD FOREIGN KEY (gc_subnum)
	REFERENCES goodscategory (gc_num)
ON DELETE CASCADE
;


ALTER TABLE attendance
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE basket
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE boardlayout
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE couponbox
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE delinfo
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE event
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE orders
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


ALTER TABLE reservation
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;
ALTER TABLE reservation
	ADD FOREIGN KEY (pet_num)
	REFERENCES pet (pet_num)
ON DELETE CASCADE
;


ALTER TABLE reviewboard
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;







ALTER TABLE basketlist
	ADD FOREIGN KEY (o_num)
	REFERENCES orders (o_num)
ON DELETE CASCADE
;


ALTER TABLE orderlist
	ADD FOREIGN KEY (o_num)
	REFERENCES orders (o_num)
ON DELETE CASCADE
;


ALTER TABLE pay
	ADD FOREIGN KEY (o_num)
	REFERENCES orders (o_num)
ON DELETE CASCADE
;


ALTER TABLE pet
	ADD FOREIGN KEY (pt_id)
	REFERENCES partners (pt_id)
ON DELETE CASCADE
;


ALTER TABLE reviewboard
	ADD FOREIGN KEY (p_num)
	REFERENCES pay (p_num)
ON DELETE CASCADE
;


ALTER TABLE sales
	ADD FOREIGN KEY (p_num)
	REFERENCES pay (p_num)
ON DELETE CASCADE
;




ALTER TABLE reviewreply
	ADD FOREIGN KEY (rb_num)
	REFERENCES reviewboard (rb_num)
ON DELETE CASCADE
;


ALTER TABLE gcs
	ADD FOREIGN KEY (sz_ssubnum)
	REFERENCES sizes (sz_ssubnum)
ON DELETE CASCADE
;

ALTER TABLE ec
	ADD FOREIGN KEY (m_id)
	REFERENCES members (m_id)
ON DELETE CASCADE
;


/* Comments */

COMMENT ON TABLE reservation IS '?????????????????? ???????????? ???????????? ???????????????.';



/* Comments */

COMMENT ON COLUMN goods.g_info IS '?????????,?????? ???
';
COMMENT ON TABLE reservation IS '?????????????????? ???????????? ???????????? ???????????????.';

/* ?????? ????????? 
create sequence faq_seq;
create sequence delinfo_seq;
create sequence orders_seq;
create sequence orderlist_seq;
create sequence goods_seq;
create sequence basket_seq;
create sequence basketlist_seq;
create sequence pay_seq;


?????? ?????????

create sequence ec_seq;
create sequence color_seq;
create sequence size_seq;
create sequence gcs_seq;