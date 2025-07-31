package web.com.springweb.a10_multi;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractMessageSource;
import org.springframework.stereotype.Component;


@Component("messageSource")
public class DBMessageSource extends AbstractMessageSource {

	@Autowired(required=false)
    private final I18nMessageMapper mapper;
    private final Map<String, Map<String, String>> messages = new HashMap<>();

    public DBMessageSource(I18nMessageMapper mapper) {
        this.mapper = mapper;
        loadMessages();
    }

    private void loadMessages() {
        List<I18nMessageVO> list = mapper.selectAllMessages();
        for (I18nMessageVO msg : list) {
            messages
                .computeIfAbsent(msg.getLocale(), k -> new HashMap<>())
                .put(msg.getCode(), msg.getMessage());
        }
    }

    @Override
    protected MessageFormat resolveCode(String code, Locale locale) {
        String lang = locale.getLanguage(); // ex: "ko"
        String message = messages
            .getOrDefault(lang, Map.of())
            .getOrDefault(code, code);
        return new MessageFormat(message, locale);
    }
}
