package mobileApp.coupon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@RestController
@RequestMapping("/coupon")
public class CouponController {
    @Autowired
    private CouponService couponService;

    @PostMapping(value = "/register", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public Long registerCoupon(HttpServletRequest request, @RequestParam(value = "image")MultipartFile image, Coupon coupon) throws IOException{
        System.out.println("Coupon controller.register");
        System.out.println(image);
        System.out.println(coupon);
        return couponService.keepCoupon(image, coupon);
    }

}