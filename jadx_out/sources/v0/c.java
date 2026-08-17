package v0;

import java.io.StringReader;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.xml.DescriptorBindingException;
import org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Service;
import org.xml.sax.InputSource;

/* loaded from: classes3.dex */
public class c extends UDA10ServiceDescriptorBinderSAXImpl {
    @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl, org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderImpl, org.fourthline.cling.binding.xml.ServiceDescriptorBinder
    public Service describe(Service service, String str) throws ValidationException, DescriptorBindingException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            b bVar = new b();
            MutableService mutableService = new MutableService();
            hydrateBasic(mutableService, service);
            new UDA10ServiceDescriptorBinderSAXImpl.RootHandler(mutableService, bVar);
            bVar.parse(new InputSource(new StringReader(str.trim())));
            return mutableService.build(service.getDevice());
        } catch (ValidationException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new DescriptorBindingException("Could not parse service descriptor: " + e3.toString(), e3);
        }
    }
}
