package app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.dto.ActivityInfo;
import app.dto.OutputMessage;
import app.service.ActivityService;

@Controller
public class WebSocketController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(getClass());
	@MessageMapping("/chat{id}")
	@SendTo("/topic/messages")
	public OutputMessage save(@DestinationVariable("id") String id) throws Exception{
		List<ActivityInfo> list=activityService.loadActivitiesFollowedByUserId(Integer.parseInt(id));
		ActivityInfo activityInfo=list.get(list.size()-1);
		OutputMessage outputMessage=new OutputMessage();
		outputMessage.setNameUser(activityInfo.getUser().getUserName());
		outputMessage.setNote(activityInfo.getNote());
		outputMessage.setTime(new SimpleDateFormat("HH:mm").format(new Date()));
		return outputMessage;
	}
/*	public OutputMessage send(final Message message) throws Exception {

		logger.info("Message sent");
		final String time = new SimpleDateFormat("HH:mm").format(new Date());
		return new OutputMessage(message.getFrom(), message.getText(), time);
	}*/

	

	@RequestMapping("/chat")
	public ModelAndView chat() {
		ModelAndView model=new ModelAndView("chat");
		model.addObject("id", currentUser().getId());
		return model;
	}

}
