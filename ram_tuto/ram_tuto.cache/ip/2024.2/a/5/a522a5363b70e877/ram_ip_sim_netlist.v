// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Jun  6 19:21:32 2025
// Host        : imad-B660M-DS3H-AX-DDR4 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_ip_sim_netlist.v
// Design      : ram_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_ip,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.687555 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_ip.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22608)
`pragma protect data_block
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
hgP/MrciMwiw0yH3ayq9x7L8hU87JTRpq3N05hFkXme16RXUvmasrQacvDLhIjdlTRHg9lBoWEkL
OS8QtSlj1pNrK08UqFhjjpVmoIj2GKAZGzj6UgboGdKl7kn72EVLvrUOyFEaNhWK34Nk1OImdUA7
DNV6PrWardli2gWHUZVMYv+YH/9QN4sHI0aOAzA/IFnrunQ6nahf/uF6AImnWkmPMzPJg2EWMRRv
nIKr2WNTVsAwa3Uq5X6tFkKVVhgQE7HiFYb2DZRmLF1AsASvF9XTnAtKfBRLaPNt6oMIuGRwcTyI
Bz2DQ2gqM7XTK8LWck/DGkntSvyfry2Y4vhcvt2fvNw8VX29fLzlA+uHVt56mEj7a4wXuz1sNErA
nJ/LnUEUCa+pK8gTXs7d+RjnPBDUpHX4Q8RrH8ohRfrWGbusMRYEvD8SjghWj/9CyZHvsVguQASB
SSmQaZBJe0CGVUo01SsQxZ0dwZ3fn2cN9thRyWD5W/6ervqWsD9PCzOhnPIBgOzip2xX7iJiKbbr
EuQowEVGRWhfmO71Ru19VFF1nQGFDxp7Pw3pQTT3K2wCMkJKgDww9DbihP6l5CYV/gcNgvS9x5+z
7J/J7I+MHOwfOe4aTzqt25FMd5TKqqe4Slgq2r+RdRPv3dBQabP0EbBeq/+zXeQPv25RqEzL/H7Z
+9n6afakABjXL2BXnR4qyNY0o0uWkQ2vF/QHZdHyexzctcv4b7/99pcrJ1LbJwUliTHOOfKdOWvE
0yRrBDZUFakuthdXUngGGqmDqE/Okw4OfaG1we+CNh7d3BlamJ5Wik2pVU1hQIAIWrVdS2HmWdAw
52waqP7ydbAwMaOCc1nRti14/EnLOHDhZG5mlqyRNhZmN85IhkgixwW5djp4auIE+RWBx2+TifQ5
bt7EGFAXbe4pX2IcK6PVrG8kWSMpk5CLbEWslAx8faC7Ndb0
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
