// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jun  7 00:04:29 2025
// Host        : imad-B660M-DS3H-AX-DDR4 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/udemy/vhdl_projects/rom_test/rom_test.gen/sources_1/ip/rom_ip/rom_ip_sim_netlist.v
// Design      : rom_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_ip,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rom_ip
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
  rom_ip_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21184)
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
