// SPDX-License-Identifier: GPL-2.0-or-later
/*
 * Marvell Armada 370 pinctrl driver based on mvebu pinctrl core
 *
 * Copyright (C) 2012 Marvell
 *
 * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
 */

#include <linux/err.h>
#include <linux/init.h>
#include <linux/io.h>
#include <linux/platform_device.h>
#include <linux/clk.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/pinctrl/pinctrl.h>

#include "pinctrl-mvebu.h"

static struct mvebu_mpp_mode mv88f6710_mpp_modes[] = {
	MPP_MODE(0,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "uart0", "rxd")),
	MPP_MODE(1,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "uart0", "txd")),
	MPP_MODE(2,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "i2c0", "sck"),
	   MPP_FUNCTION(0x2, "uart0", "txd")),
	MPP_MODE(3,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "i2c0", "sda"),
	   MPP_FUNCTION(0x2, "uart0", "rxd")),
	MPP_MODE(4,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "vdd", "cpu-pd")),
	MPP_MODE(5,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txclkout"),
	   MPP_FUNCTION(0x2, "uart1", "txd"),
	   MPP_FUNCTION(0x4, "spi1", "sck"),
	   MPP_FUNCTION(0x5, "audio", "mclk")),
	MPP_MODE(6,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd0"),
	   MPP_FUNCTION(0x2, "sata0", "prsnt"),
	   MPP_FUNCTION(0x4, "tdm", "rst"),
	   MPP_FUNCTION(0x5, "audio", "sdo")),
	MPP_MODE(7,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd1"),
	   MPP_FUNCTION(0x4, "tdm", "dtx"),
	   MPP_FUNCTION(0x5, "audio", "lrclk")),
	MPP_MODE(8,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd2"),
	   MPP_FUNCTION(0x2, "uart0", "rts"),
	   MPP_FUNCTION(0x4, "tdm", "drx"),
	   MPP_FUNCTION(0x5, "audio", "bclk")),
	MPP_MODE(9,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd3"),
	   MPP_FUNCTION(0x2, "uart1", "txd"),
	   MPP_FUNCTION(0x3, "sd0", "clk"),
	   MPP_FUNCTION(0x5, "audio", "spdifo")),
	MPP_MODE(10,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txctl"),
	   MPP_FUNCTION(0x2, "uart0", "cts"),
	   MPP_FUNCTION(0x4, "tdm", "fsync"),
	   MPP_FUNCTION(0x5, "audio", "sdi")),
	MPP_MODE(11,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd0"),
	   MPP_FUNCTION(0x2, "uart1", "rxd"),
	   MPP_FUNCTION(0x3, "sd0", "cmd"),
	   MPP_FUNCTION(0x4, "spi0", "cs1"),
	   MPP_FUNCTION(0x5, "sata1", "prsnt"),
	   MPP_FUNCTION(0x6, "spi1", "cs1")),
	MPP_MODE(12,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd1"),
	   MPP_FUNCTION(0x2, "i2c1", "sda"),
	   MPP_FUNCTION(0x3, "sd0", "d0"),
	   MPP_FUNCTION(0x4, "spi1", "cs0"),
	   MPP_FUNCTION(0x5, "audio", "spdifi")),
	MPP_MODE(13,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd2"),
	   MPP_FUNCTION(0x2, "i2c1", "sck"),
	   MPP_FUNCTION(0x3, "sd0", "d1"),
	   MPP_FUNCTION(0x4, "tdm", "pclk"),
	   MPP_FUNCTION(0x5, "audio", "rmclk")),
	MPP_MODE(14,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd3"),
	   MPP_FUNCTION(0x2, "pcie", "clkreq0"),
	   MPP_FUNCTION(0x3, "sd0", "d2"),
	   MPP_FUNCTION(0x4, "spi1", "mosi"),
	   MPP_FUNCTION(0x5, "spi0", "cs2")),
	MPP_MODE(15,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxctl"),
	   MPP_FUNCTION(0x2, "pcie", "clkreq1"),
	   MPP_FUNCTION(0x3, "sd0", "d3"),
	   MPP_FUNCTION(0x4, "spi1", "miso"),
	   MPP_FUNCTION(0x5, "spi0", "cs3")),
	MPP_MODE(16,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxclk"),
	   MPP_FUNCTION(0x2, "uart1", "rxd"),
	   MPP_FUNCTION(0x4, "tdm", "int"),
	   MPP_FUNCTION(0x5, "audio", "extclk")),
	MPP_MODE(17,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge", "mdc")),
	MPP_MODE(18,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge", "mdio")),
	MPP_MODE(19,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txclk"),
	   MPP_FUNCTION(0x2, "ge1", "txclkout"),
	   MPP_FUNCTION(0x4, "tdm", "pclk")),
	MPP_MODE(20,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd4"),
	   MPP_FUNCTION(0x2, "ge1", "txd0")),
	MPP_MODE(21,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd5"),
	   MPP_FUNCTION(0x2, "ge1", "txd1"),
	   MPP_FUNCTION(0x4, "uart1", "txd")),
	MPP_MODE(22,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd6"),
	   MPP_FUNCTION(0x2, "ge1", "txd2"),
	   MPP_FUNCTION(0x4, "uart0", "rts")),
	MPP_MODE(23,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "ge0", "txd7"),
	   MPP_FUNCTION(0x2, "ge1", "txd3"),
	   MPP_FUNCTION(0x4, "spi1", "mosi")),
	MPP_MODE(24,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "col"),
	   MPP_FUNCTION(0x2, "ge1", "txctl"),
	   MPP_FUNCTION(0x4, "spi1", "cs0")),
	MPP_MODE(25,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxerr"),
	   MPP_FUNCTION(0x2, "ge1", "rxd0"),
	   MPP_FUNCTION(0x4, "uart1", "rxd")),
	MPP_MODE(26,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "crs"),
	   MPP_FUNCTION(0x2, "ge1", "rxd1"),
	   MPP_FUNCTION(0x4, "spi1", "miso")),
	MPP_MODE(27,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd4"),
	   MPP_FUNCTION(0x2, "ge1", "rxd2"),
	   MPP_FUNCTION(0x4, "uart0", "cts")),
	MPP_MODE(28,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd5"),
	   MPP_FUNCTION(0x2, "ge1", "rxd3")),
	MPP_MODE(29,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd6"),
	   MPP_FUNCTION(0x2, "ge1", "rxctl"),
	   MPP_FUNCTION(0x4, "i2c1", "sda")),
	MPP_MODE(30,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "ge0", "rxd7"),
	   MPP_FUNCTION(0x2, "ge1", "rxclk"),
	   MPP_FUNCTION(0x4, "i2c1", "sck")),
	MPP_MODE(31,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x3, "tclk", NULL),
	   MPP_FUNCTION(0x4, "ge0", "txerr")),
	MPP_MODE(32,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "spi0", "cs0")),
	MPP_MODE(33,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "bootcs"),
	   MPP_FUNCTION(0x2, "spi0", "cs0")),
	MPP_MODE(34,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "we0"),
	   MPP_FUNCTION(0x2, "spi0", "mosi")),
	MPP_MODE(35,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "oe"),
	   MPP_FUNCTION(0x2, "spi0", "sck")),
	MPP_MODE(36,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "a1"),
	   MPP_FUNCTION(0x2, "spi0", "miso")),
	MPP_MODE(37,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "a0"),
	   MPP_FUNCTION(0x2, "sata0", "prsnt")),
	MPP_MODE(38,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ready"),
	   MPP_FUNCTION(0x2, "uart1", "cts"),
	   MPP_FUNCTION(0x3, "uart0", "cts")),
	MPP_MODE(39,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad0"),
	   MPP_FUNCTION(0x2, "audio", "spdifo")),
	MPP_MODE(40,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad1"),
	   MPP_FUNCTION(0x2, "uart1", "rts"),
	   MPP_FUNCTION(0x3, "uart0", "rts")),
	MPP_MODE(41,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad2"),
	   MPP_FUNCTION(0x2, "uart1", "rxd")),
	MPP_MODE(42,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad3"),
	   MPP_FUNCTION(0x2, "uart1", "txd")),
	MPP_MODE(43,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad4"),
	   MPP_FUNCTION(0x2, "audio", "bclk")),
	MPP_MODE(44,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad5"),
	   MPP_FUNCTION(0x2, "audio", "mclk")),
	MPP_MODE(45,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad6"),
	   MPP_FUNCTION(0x2, "audio", "lrclk")),
	MPP_MODE(46,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad7"),
	   MPP_FUNCTION(0x2, "audio", "sdo")),
	MPP_MODE(47,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad8"),
	   MPP_FUNCTION(0x3, "sd0", "clk"),
	   MPP_FUNCTION(0x5, "audio", "spdifo")),
	MPP_MODE(48,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad9"),
	   MPP_FUNCTION(0x2, "uart0", "rts"),
	   MPP_FUNCTION(0x3, "sd0", "cmd"),
	   MPP_FUNCTION(0x4, "sata1", "prsnt"),
	   MPP_FUNCTION(0x5, "spi0", "cs1")),
	MPP_MODE(49,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad10"),
	   MPP_FUNCTION(0x2, "pcie", "clkreq1"),
	   MPP_FUNCTION(0x3, "sd0", "d0"),
	   MPP_FUNCTION(0x4, "spi1", "cs0"),
	   MPP_FUNCTION(0x5, "audio", "spdifi")),
	MPP_MODE(50,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad11"),
	   MPP_FUNCTION(0x2, "uart0", "cts"),
	   MPP_FUNCTION(0x3, "sd0", "d1"),
	   MPP_FUNCTION(0x4, "spi1", "miso"),
	   MPP_FUNCTION(0x5, "audio", "rmclk")),
	MPP_MODE(51,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad12"),
	   MPP_FUNCTION(0x2, "i2c1", "sda"),
	   MPP_FUNCTION(0x3, "sd0", "d2"),
	   MPP_FUNCTION(0x4, "spi1", "mosi")),
	MPP_MODE(52,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad13"),
	   MPP_FUNCTION(0x2, "i2c1", "sck"),
	   MPP_FUNCTION(0x3, "sd0", "d3"),
	   MPP_FUNCTION(0x4, "spi1", "sck")),
	MPP_MODE(53,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad14"),
	   MPP_FUNCTION(0x2, "sd0", "clk"),
	   MPP_FUNCTION(0x3, "tdm", "pclk"),
	   MPP_FUNCTION(0x4, "spi0", "cs2"),
	   MPP_FUNCTION(0x5, "pcie", "clkreq1")),
	MPP_MODE(54,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ad15"),
	   MPP_FUNCTION(0x3, "tdm", "dtx")),
	MPP_MODE(55,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "cs1"),
	   MPP_FUNCTION(0x2, "uart1", "txd"),
	   MPP_FUNCTION(0x3, "tdm", "rst"),
	   MPP_FUNCTION(0x4, "sata1", "prsnt"),
	   MPP_FUNCTION(0x5, "sata0", "prsnt")),
	MPP_MODE(56,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "cs2"),
	   MPP_FUNCTION(0x2, "uart1", "cts"),
	   MPP_FUNCTION(0x3, "uart0", "cts"),
	   MPP_FUNCTION(0x4, "spi0", "cs3"),
	   MPP_FUNCTION(0x5, "pcie", "clkreq0"),
	   MPP_FUNCTION(0x6, "spi1", "cs1")),
	MPP_MODE(57,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "cs3"),
	   MPP_FUNCTION(0x2, "uart1", "rxd"),
	   MPP_FUNCTION(0x3, "tdm", "fsync"),
	   MPP_FUNCTION(0x4, "sata0", "prsnt"),
	   MPP_FUNCTION(0x5, "audio", "sdo")),
	MPP_MODE(58,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "cs0"),
	   MPP_FUNCTION(0x2, "uart1", "rts"),
	   MPP_FUNCTION(0x3, "tdm", "int"),
	   MPP_FUNCTION(0x5, "audio", "extclk"),
	   MPP_FUNCTION(0x6, "uart0", "rts")),
	MPP_MODE(59,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "ale0"),
	   MPP_FUNCTION(0x2, "uart1", "rts"),
	   MPP_FUNCTION(0x3, "uart0", "rts"),
	   MPP_FUNCTION(0x5, "audio", "bclk")),
	MPP_MODE(60,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "ale1"),
	   MPP_FUNCTION(0x2, "uart1", "rxd"),
	   MPP_FUNCTION(0x3, "sata0", "prsnt"),
	   MPP_FUNCTION(0x4, "pcie", "rstout"),
	   MPP_FUNCTION(0x5, "audio", "sdi")),
	MPP_MODE(61,
	   MPP_FUNCTION(0x0, "gpo", NULL),
	   MPP_FUNCTION(0x1, "dev", "we1"),
	   MPP_FUNCTION(0x2, "uart1", "txd"),
	   MPP_FUNCTION(0x5, "audio", "lrclk")),
	MPP_MODE(62,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "dev", "a2"),
	   MPP_FUNCTION(0x2, "uart1", "cts"),
	   MPP_FUNCTION(0x3, "tdm", "drx"),
	   MPP_FUNCTION(0x4, "pcie", "clkreq0"),
	   MPP_FUNCTION(0x5, "audio", "mclk"),
	   MPP_FUNCTION(0x6, "uart0", "cts")),
	MPP_MODE(63,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "spi0", "sck"),
	   MPP_FUNCTION(0x2, "tclk", NULL)),
	MPP_MODE(64,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "spi0", "miso"),
	   MPP_FUNCTION(0x2, "spi0", "cs1")),
	MPP_MODE(65,
	   MPP_FUNCTION(0x0, "gpio", NULL),
	   MPP_FUNCTION(0x1, "spi0", "mosi"),
	   MPP_FUNCTION(0x2, "spi0", "cs2")),
};

static struct mvebu_pinctrl_soc_info armada_370_pinctrl_info;

static const struct of_device_id armada_370_pinctrl_of_match[] = {
	{ .compatible = "marvell,mv88f6710-pinctrl" },
	{ },
};

static const struct mvebu_mpp_ctrl mv88f6710_mpp_controls[] = {
	MPP_FUNC_CTRL(0, 65, NULL, mvebu_mmio_mpp_ctrl),
};

static struct pinctrl_gpio_range mv88f6710_mpp_gpio_ranges[] = {
	MPP_GPIO_RANGE(0,   0,  0, 32),
	MPP_GPIO_RANGE(1,  32, 32, 32),
	MPP_GPIO_RANGE(2,  64, 64,  2),
};

static int armada_370_pinctrl_probe(struct platform_device *pdev)
{
	struct mvebu_pinctrl_soc_info *soc = &armada_370_pinctrl_info;

	soc->variant = 0; /* no variants for Armada 370 */
	soc->controls = mv88f6710_mpp_controls;
	soc->ncontrols = ARRAY_SIZE(mv88f6710_mpp_controls);
	soc->modes = mv88f6710_mpp_modes;
	soc->nmodes = ARRAY_SIZE(mv88f6710_mpp_modes);
	soc->gpioranges = mv88f6710_mpp_gpio_ranges;
	soc->ngpioranges = ARRAY_SIZE(mv88f6710_mpp_gpio_ranges);

	pdev->dev.platform_data = soc;

	return mvebu_pinctrl_simple_mmio_probe(pdev);
}

static struct platform_driver armada_370_pinctrl_driver = {
	.driver = {
		.name = "armada-370-pinctrl",
		.of_match_table = armada_370_pinctrl_of_match,
	},
	.probe = armada_370_pinctrl_probe,
};
builtin_platform_driver(armada_370_pinctrl_driver);
