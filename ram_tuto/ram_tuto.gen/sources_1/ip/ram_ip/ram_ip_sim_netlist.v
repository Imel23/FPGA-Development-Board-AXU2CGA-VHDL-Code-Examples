// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Jun  6 19:21:33 2025
// Host        : imad-B660M-DS3H-AX-DDR4 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/udemy/vhdl_projects/ram_tuto/ram_tuto.gen/sources_1/ip/ram_ip/ram_ip_sim_netlist.v
// Design      : ram_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_ip,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ram_ip
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
  ram_ip_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22496)
`pragma protect data_block
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
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
