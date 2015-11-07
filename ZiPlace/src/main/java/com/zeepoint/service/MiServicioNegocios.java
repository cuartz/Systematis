/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zeepoint.service;

import static com.util.Reversed.reversed;
import com.util.ZipointsBLException;
import com.zeepoint.DAO.CityDAO;
import com.zeepoint.DAO.ContactDAO;
import com.zeepoint.DAO.CountryDAO;
import com.zeepoint.communication.ZipointMessage;
import com.zeepoint.DAO.MessageDAO;
import com.zeepoint.DAO.PmessageDAO;
import com.zeepoint.DAO.RoomDAO;
import com.zeepoint.DAO.StateDAO;
import com.zeepoint.DAO.ZeepointDAO;
import com.zeepoint.DAO.ZipuserDAO;
import com.zeepoint.communication.RespuestaMiServicioOUT;
import com.zeepoint.communication.UserOUT;
import com.zeepoint.communication.ZeepointJoinedOUT;
import com.zeepoint.communication.ZeepointOUT;
import com.zeepoint.communication.ZipointMessagesOUT;
import com.zeepoint.communication.ZipointPrivateMessage;
import com.zeepoint.communication.ZipointPrivateMessagesOUT;
import com.zeepoint.model.City;
import com.zeepoint.model.Contact;
import com.zeepoint.model.Country;
import com.zeepoint.model.Message;
import com.zeepoint.model.Pmessage;
import com.zeepoint.model.Room;
import com.zeepoint.model.State;
import com.zeepoint.model.Zeepoint;
import com.zeepoint.model.Zipuser;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author cuartz
 */
@Component
public class MiServicioNegocios implements IMiServicioNegocios {

    @Autowired
    private ZipuserDAO userDao;
 

    @Override
    @Transactional
    public RespuestaMiServicioOUT dameNombreUsuario() {

        RespuestaMiServicioOUT respuestaNegocios=new RespuestaMiServicioOUT();
        List<Zipuser> usuarios=userDao.findByID(1L);
        respuestaNegocios.setNombreUsuario(usuarios.get(0).getName());
        return respuestaNegocios;
    }

}
