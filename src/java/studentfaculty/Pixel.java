/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package studentfaculty;
import java.awt.*;
import java.awt.image.BufferedImage;

import java.io.*;

import javax.imageio.ImageIO;
/**
 *
 * @author Nikith1000Projects
 */
public class Pixel {
   BufferedImage image;
   int width;
   int height;
   boolean finalval ;
   BufferedImage image1;
   int width1;
   int height1;
   int check[] = new int[50000];
   Boolean Pixel(String img1,String Img2) 
   
   {
      try {
         File input = new File(img1);
         image = ImageIO.read(input);
         width = image.getWidth();
         height = image.getHeight();
         
        File input1 = new File(Img2);
          image1 = ImageIO.read(input1);
          width1 = image1.getWidth();
         
         int count = 0;
         int count1 = 0;
         
         int count2=0;
         
          for(int i1=0; i1<height; i1++){
         
            for(int j1=0; j1<width; j1++){
            
               count1++;
               Color c1 = new Color(image1.getRGB(j1, i1));
               System.out.println("S.No: " + count1 + " Red: " + c1.getRed() +"  Green: " + c1.getGreen() + " Blue: " + c1.getBlue());
           
         
         
         
         
         
         for(int i=0; i<height; i++){
         
            for(int j=0; j<width; j++){
            
               count++;
               Color c = new Color(image.getRGB(j, i));
               System.out.println("S.No: " + count + " Red: " + c.getRed() +"  Green: " + c.getGreen() + " Blue: " + c.getBlue());
            
               
               if (c1.getRed()==c.getRed() && c1.getGreen() == c.getGreen() && c1.getBlue()== c.getBlue())
            {
                count2++;
            
            }
                        
            }
         }
          }
          }
          
          if (count2 == count1)
          {
              finalval = true;
          }
          else
          {
              finalval = false;
          }
         
      } catch (Exception e) {}
      
      
          
             return finalval;
   
   }
   
  
}