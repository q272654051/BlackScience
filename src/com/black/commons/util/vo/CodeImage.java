package com.black.commons.util.vo;

import java.awt.image.BufferedImage;

import jp.sourceforge.qrcode.data.QRCodeImage;
/**
 * 二维码生成实体类
 * @author djx
 *
 */
public class CodeImage   implements QRCodeImage{

	 BufferedImage bufImg; 
	
	public CodeImage(BufferedImage bufImg) {
		this.bufImg = bufImg;
	}

	public int getHeight() {
		return bufImg.getHeight();  
	}

	public int getPixel(int x, int y) {
		return bufImg.getRGB(x, y); 
	}

	public int getWidth() {
		 return bufImg.getWidth(); 
	}

}
