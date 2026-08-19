package org.fourthline.cling.binding.xml;

import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Service;
import org.w3c.dom.Document;

/* loaded from: classes5.dex */
public interface ServiceDescriptorBinder {
    Document buildDOM(Service service) throws DescriptorBindingException;

    <T extends Service> T describe(T t2, String str) throws ValidationException, DescriptorBindingException;

    <T extends Service> T describe(T t2, Document document) throws ValidationException, DescriptorBindingException;

    String generate(Service service) throws DescriptorBindingException;
}
