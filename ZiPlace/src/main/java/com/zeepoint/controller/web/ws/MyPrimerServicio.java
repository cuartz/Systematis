/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zeepoint.controller.web.ws;

import com.zeepoint.communication.RespuestaMiServicioOUT;
import com.zeepoint.communication.ZeepointOUT;
import com.zeepoint.communication.ZeepointsOUT;
import java.math.BigDecimal;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.zeepoint.service.IMiServicioNegocios;

/**
 *
 * @author cuartz
 */
@RestController
public class MyPrimerServicio {
    
    @Autowired
    IMiServicioNegocios servicioNegocios;
      @RequestMapping("/zeepointgroups/consultausuario")
    public RespuestaMiServicioOUT getAllZpoints() {
        RespuestaMiServicioOUT respuesta=servicioNegocios.dameNombreUsuario();
//        List<ZeepointOUT> zps = zpointService.getAllZpoints(lat, lon, userId,0,30);
//        ZeepointsOUT zpsOUT = new ZeepointsOUT();
//        zpsOUT.setZeePointsOut(zps);
//
//        try {
//           // jmsTemplate.convertAndSend("ios.notifications", "mensaje");//"mailbox-destination", "mensaje");
//
////                Push.alert("Hello World!", "keystore.p12", "wasa0901852592C", false, "Your token");
//        } catch (Exception ex) {
//            ex.printStackTrace();
//            Logger.getLogger(ZeePointGroupController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return zpsOUT;
        return respuesta;
    }
}
