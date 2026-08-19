package androidx.webkit.internal;

import androidx.webkit.BackForwardCacheSettings;
import androidx.webkit.UserAgentMetadata;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewMediaIntegrityApiStatusConfig;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewBackForwardCacheSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebSettingsAdapter {
    private final WebSettingsBoundaryInterface mBoundaryInterface;

    public WebSettingsAdapter(WebSettingsBoundaryInterface webSettingsBoundaryInterface) {
        this.mBoundaryInterface = webSettingsBoundaryInterface;
    }

    public int getAttributionRegistrationBehavior() {
        return this.mBoundaryInterface.getAttributionBehavior();
    }

    public boolean getBackForwardCacheEnabled() {
        return this.mBoundaryInterface.getBackForwardCacheEnabled();
    }

    @WebSettingsCompat.ExperimentalBackForwardCacheSettings
    public BackForwardCacheSettings getBackForwardCacheSettings() {
        final WebViewBackForwardCacheSettingsBoundaryInterface webViewBackForwardCacheSettingsBoundaryInterface = (WebViewBackForwardCacheSettingsBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewBackForwardCacheSettingsBoundaryInterface.class, this.mBoundaryInterface.getBackForwardCacheSettings());
        BackForwardCacheSettings backForwardCacheSettings = (BackForwardCacheSettings) webViewBackForwardCacheSettingsBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.J
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new BackForwardCacheSettings.Builder().setMaxPagesInCache(webViewBackForwardCacheSettingsBoundaryInterface.getMaxPagesInCache()).setTimeoutSeconds(r0.getTimeoutInSeconds()).build();
            }
        });
        return backForwardCacheSettings != null ? backForwardCacheSettings : new BackForwardCacheSettings.Builder().build();
    }

    public boolean getCookieAccessForShouldInterceptRequestEnabled() {
        return this.mBoundaryInterface.getIncludeCookiesOnIntercept();
    }

    public int getDisabledActionModeMenuItems() {
        return this.mBoundaryInterface.getDisabledActionModeMenuItems();
    }

    public boolean getEnterpriseAuthenticationAppLinkPolicyEnabled() {
        return this.mBoundaryInterface.getEnterpriseAuthenticationAppLinkPolicyEnabled();
    }

    public int getForceDark() {
        return this.mBoundaryInterface.getForceDark();
    }

    public int getForceDarkStrategy() {
        return this.mBoundaryInterface.getForceDarkBehavior();
    }

    public boolean getHasEnrolledInstrumentEnabled() {
        return this.mBoundaryInterface.getHasEnrolledInstrumentEnabled();
    }

    public boolean getOffscreenPreRaster() {
        return this.mBoundaryInterface.getOffscreenPreRaster();
    }

    public boolean getPaymentRequestEnabled() {
        return this.mBoundaryInterface.getPaymentRequestEnabled();
    }

    public boolean getSafeBrowsingEnabled() {
        return this.mBoundaryInterface.getSafeBrowsingEnabled();
    }

    public int getSpeculativeLoadingStatus() {
        return this.mBoundaryInterface.getSpeculativeLoadingStatus();
    }

    public UserAgentMetadata getUserAgentMetadata() {
        return UserAgentMetadataInternal.getUserAgentMetadataFromMap(this.mBoundaryInterface.getUserAgentMetadataMap());
    }

    public int getWebAuthenticationSupport() {
        return this.mBoundaryInterface.getWebauthnSupport();
    }

    public WebViewMediaIntegrityApiStatusConfig getWebViewMediaIntegrityApiStatus() {
        return new WebViewMediaIntegrityApiStatusConfig.Builder(this.mBoundaryInterface.getWebViewMediaIntegrityApiDefaultStatus()).setOverrideRules(this.mBoundaryInterface.getWebViewMediaIntegrityApiOverrideRules()).build();
    }

    public boolean isAlgorithmicDarkeningAllowed() {
        return this.mBoundaryInterface.isAlgorithmicDarkeningAllowed();
    }

    public void setAlgorithmicDarkeningAllowed(boolean z2) {
        this.mBoundaryInterface.setAlgorithmicDarkeningAllowed(z2);
    }

    public void setAttributionRegistrationBehavior(int i2) {
        this.mBoundaryInterface.setAttributionBehavior(i2);
    }

    public void setBackForwardCacheEnabled(boolean z2) {
        this.mBoundaryInterface.setBackForwardCacheEnabled(z2);
    }

    @WebSettingsCompat.ExperimentalBackForwardCacheSettings
    public void setBackForwardCacheSettings(BackForwardCacheSettings backForwardCacheSettings) {
        this.mBoundaryInterface.setBackForwardCacheSettings(BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new BackForwardCacheSettingsImpl(backForwardCacheSettings)));
    }

    public void setCookieAccessForShouldInterceptRequestEnabled(boolean z2) {
        this.mBoundaryInterface.setIncludeCookiesOnIntercept(z2);
    }

    public void setDisabledActionModeMenuItems(int i2) {
        this.mBoundaryInterface.setDisabledActionModeMenuItems(i2);
    }

    public void setEnterpriseAuthenticationAppLinkPolicyEnabled(boolean z2) {
        this.mBoundaryInterface.setEnterpriseAuthenticationAppLinkPolicyEnabled(z2);
    }

    public void setForceDark(int i2) {
        this.mBoundaryInterface.setForceDark(i2);
    }

    public void setForceDarkStrategy(int i2) {
        this.mBoundaryInterface.setForceDarkBehavior(i2);
    }

    public void setHasEnrolledInstrumentEnabled(boolean z2) {
        this.mBoundaryInterface.setHasEnrolledInstrumentEnabled(z2);
    }

    public void setHyperlinkContextMenuItems(int i2) {
        this.mBoundaryInterface.setHyperlinkContextMenuItems(i2);
    }

    public void setOffscreenPreRaster(boolean z2) {
        this.mBoundaryInterface.setOffscreenPreRaster(z2);
    }

    public void setPaymentRequestEnabled(boolean z2) {
        this.mBoundaryInterface.setPaymentRequestEnabled(z2);
    }

    public void setSafeBrowsingEnabled(boolean z2) {
        this.mBoundaryInterface.setSafeBrowsingEnabled(z2);
    }

    public void setSpeculativeLoadingStatus(int i2) {
        this.mBoundaryInterface.setSpeculativeLoadingStatus(i2);
    }

    public void setUserAgentMetadata(UserAgentMetadata userAgentMetadata) {
        this.mBoundaryInterface.setUserAgentMetadataFromMap(UserAgentMetadataInternal.convertUserAgentMetadataToMap(userAgentMetadata));
    }

    public void setWebAuthenticationSupport(int i2) {
        this.mBoundaryInterface.setWebauthnSupport(i2);
    }

    public void setWebViewMediaIntegrityApiStatus(WebViewMediaIntegrityApiStatusConfig webViewMediaIntegrityApiStatusConfig) {
        this.mBoundaryInterface.setWebViewMediaIntegrityApiStatus(webViewMediaIntegrityApiStatusConfig.getDefaultStatus(), webViewMediaIntegrityApiStatusConfig.getOverrideRules());
    }
}
