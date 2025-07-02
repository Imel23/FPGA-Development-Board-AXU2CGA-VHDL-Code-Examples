// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jun  7 00:04:28 2025
// Host        : imad-B660M-DS3H-AX-DDR4 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_ip_sim_netlist.v
// Design      : rom_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_ip,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.549983 mW" *) 
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
  (* C_INIT_FILE = "rom_ip.mem" *) 
  (* C_INIT_FILE_NAME = "rom_ip.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21280)
`pragma protect data_block
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
/qctaOmUqRwzvzEMWoyOIsuXSg==
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
