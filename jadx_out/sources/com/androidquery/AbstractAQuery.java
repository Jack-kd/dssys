package com.androidquery;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.androidquery.AbstractAQuery;
import com.androidquery.auth.AccountHandle;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.BitmapAjaxCallback;
import com.androidquery.callback.ImageOptions;
import com.androidquery.callback.Transformer;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.WebImage;
import com.anythink.core.common.m.AbstractC1114b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;

/* loaded from: classes.dex */
public abstract class AbstractAQuery<T extends AbstractAQuery<T>> implements Constants {
    private static Class<?>[] LAYER_TYPE_SIG;
    private static final Class<?>[] ON_CLICK_SIG = {View.class};
    private static Class<?>[] ON_ITEM_SIG;
    private static Class<?>[] ON_SCROLLED_STATE_SIG;
    private static final Class<?>[] OVER_SCROLL_SIG;
    private static Class<?>[] PENDING_TRANSITION_SIG;
    private static final Class<?>[] TEXT_CHANGE_SIG;
    private static WeakHashMap<Dialog, Void> dialogs;
    private Activity act;
    protected AccountHandle ah;
    private Constructor<T> constructor;
    private Context context;
    private Integer policy;
    protected Object progress;
    private HttpHost proxy;
    private View root;
    private Transformer trans;
    protected View view;

    static {
        Class cls = Long.TYPE;
        Class cls2 = Integer.TYPE;
        ON_ITEM_SIG = new Class[]{AdapterView.class, View.class, cls2, cls};
        ON_SCROLLED_STATE_SIG = new Class[]{AbsListView.class, cls2};
        TEXT_CHANGE_SIG = new Class[]{CharSequence.class, cls2, cls2, cls2};
        PENDING_TRANSITION_SIG = new Class[]{cls2, cls2};
        OVER_SCROLL_SIG = new Class[]{cls2};
        LAYER_TYPE_SIG = new Class[]{cls2, Paint.class};
        dialogs = new WeakHashMap<>();
    }

    public AbstractAQuery(Activity activity) {
        this.act = activity;
    }

    private View findView(int i2) {
        View view = this.root;
        if (view != null) {
            return view.findViewById(i2);
        }
        Activity activity = this.act;
        if (activity != null) {
            return activity.findViewById(i2);
        }
        return null;
    }

    private Constructor<T> getConstructor() {
        if (this.constructor == null) {
            try {
                this.constructor = (Constructor<T>) getClass().getConstructor(View.class);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.constructor;
    }

    private T self() {
        return this;
    }

    private Common setScrollListener() {
        AbsListView absListView = (AbsListView) this.view;
        Common common = (Common) absListView.getTag(Constants.TAG_SCROLL_LISTENER);
        if (common != null) {
            return common;
        }
        Common common2 = new Common();
        absListView.setOnScrollListener(common2);
        absListView.setTag(Constants.TAG_SCROLL_LISTENER, common2);
        AQUtility.debug("set scroll listenr");
        return common2;
    }

    private void size(boolean z2, int i2, boolean z3) {
        View view = this.view;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Context context = getContext();
            if (i2 > 0 && z3) {
                i2 = AQUtility.dip2pixel(context, i2);
            }
            if (z2) {
                layoutParams.width = i2;
            } else {
                layoutParams.height = i2;
            }
            this.view.setLayoutParams(layoutParams);
        }
    }

    public T adapter(Adapter adapter) {
        View view = this.view;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setAdapter(adapter);
        }
        return (T) self();
    }

    public <K> T ajax(AjaxCallback<K> ajaxCallback) {
        return (T) invoke(ajaxCallback);
    }

    public T ajaxCancel() {
        AbstractAjaxCallback.cancel();
        return (T) self();
    }

    public T animate(int i2) {
        return (T) animate(i2, null);
    }

    public T auth(AccountHandle accountHandle) {
        this.ah = accountHandle;
        return (T) self();
    }

    public T background(int i2) {
        View view = this.view;
        if (view != null) {
            if (i2 != 0) {
                view.setBackgroundResource(i2);
            } else {
                view.setBackgroundDrawable(null);
            }
        }
        return (T) self();
    }

    public T backgroundColor(int i2) {
        View view = this.view;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
        return (T) self();
    }

    public T cache(String str, long j2) {
        return (T) ajax(str, byte[].class, j2, (Object) null, (String) null);
    }

    public T checked(boolean z2) {
        View view = this.view;
        if (view instanceof CompoundButton) {
            ((CompoundButton) view).setChecked(z2);
        }
        return (T) self();
    }

    public T clear() {
        View view = this.view;
        if (view != null) {
            if (view instanceof ImageView) {
                ImageView imageView = (ImageView) view;
                imageView.setImageBitmap(null);
                imageView.setTag(Constants.TAG_URL, null);
            } else if (view instanceof WebView) {
                WebView webView = (WebView) view;
                webView.stopLoading();
                webView.clearView();
                webView.setTag(Constants.TAG_URL, null);
            } else if (view instanceof TextView) {
                ((TextView) view).setText("");
            }
        }
        return (T) self();
    }

    public T click() {
        View view = this.view;
        if (view != null) {
            view.performClick();
        }
        return (T) self();
    }

    public T clickable(boolean z2) {
        View view = this.view;
        if (view != null) {
            view.setClickable(z2);
        }
        return (T) self();
    }

    public T clicked(Object obj, String str) {
        return (T) clicked(new Common().forward(obj, str, true, ON_CLICK_SIG));
    }

    public T create(View view) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Exception e2;
        T tNewInstance;
        try {
            tNewInstance = getConstructor().newInstance(view);
        } catch (Exception e3) {
            e2 = e3;
            tNewInstance = null;
        }
        try {
            tNewInstance.act = this.act;
            return tNewInstance;
        } catch (Exception e4) {
            e2 = e4;
            e2.printStackTrace();
            return tNewInstance;
        }
    }

    public T dataChanged() {
        View view = this.view;
        if (view instanceof AdapterView) {
            Adapter adapter = ((AdapterView) view).getAdapter();
            if (adapter instanceof BaseAdapter) {
                ((BaseAdapter) adapter).notifyDataSetChanged();
            }
        }
        return (T) self();
    }

    public <K> T delete(String str, Class<K> cls, AjaxCallback<K> ajaxCallback) {
        ajaxCallback.url(str).type(cls).method(2);
        return (T) ajax(ajaxCallback);
    }

    public T dismiss(Dialog dialog) {
        if (dialog != null) {
            try {
                dialogs.remove(dialog);
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
        return (T) self();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T download(String str, File file, AjaxCallback<File> ajaxCallback) {
        ((AjaxCallback) ajaxCallback.url(str)).type(File.class).targetFile(file);
        return (T) ajax(ajaxCallback);
    }

    public T enabled(boolean z2) {
        View view = this.view;
        if (view != null) {
            view.setEnabled(z2);
        }
        return (T) self();
    }

    public T expand(int i2, boolean z2) {
        View view = this.view;
        if (view instanceof ExpandableListView) {
            ExpandableListView expandableListView = (ExpandableListView) view;
            if (z2) {
                expandableListView.expandGroup(i2);
            } else {
                expandableListView.collapseGroup(i2);
            }
        }
        return (T) self();
    }

    public T find(int i2) {
        return (T) create(findView(i2));
    }

    public Button getButton() {
        return (Button) this.view;
    }

    public File getCachedFile(String str) {
        File existedCacheByUrl = AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(getContext(), 1), str);
        return existedCacheByUrl == null ? AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(getContext(), 0), str) : existedCacheByUrl;
    }

    public Bitmap getCachedImage(String str) {
        return getCachedImage(str, 0);
    }

    public CheckBox getCheckBox() {
        return (CheckBox) this.view;
    }

    public Context getContext() {
        Activity activity = this.act;
        if (activity != null) {
            return activity;
        }
        View view = this.root;
        return view != null ? view.getContext() : this.context;
    }

    public EditText getEditText() {
        return (EditText) this.view;
    }

    public Editable getEditable() {
        View view = this.view;
        if (view instanceof EditText) {
            return ((EditText) view).getEditableText();
        }
        return null;
    }

    public ExpandableListView getExpandableListView() {
        return (ExpandableListView) this.view;
    }

    public Gallery getGallery() {
        return (Gallery) this.view;
    }

    public GridView getGridView() {
        return (GridView) this.view;
    }

    public ImageView getImageView() {
        return (ImageView) this.view;
    }

    public ListView getListView() {
        return (ListView) this.view;
    }

    public ProgressBar getProgressBar() {
        return (ProgressBar) this.view;
    }

    public RatingBar getRatingBar() {
        return (RatingBar) this.view;
    }

    public SeekBar getSeekBar() {
        return (SeekBar) this.view;
    }

    public Object getSelectedItem() {
        View view = this.view;
        if (view instanceof AdapterView) {
            return ((AdapterView) view).getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        View view = this.view;
        if (view instanceof AdapterView) {
            return ((AdapterView) view).getSelectedItemPosition();
        }
        return -1;
    }

    public Spinner getSpinner() {
        return (Spinner) this.view;
    }

    public Object getTag() {
        View view = this.view;
        if (view != null) {
            return view.getTag();
        }
        return null;
    }

    public CharSequence getText() {
        View view = this.view;
        if (view instanceof TextView) {
            return ((TextView) view).getText();
        }
        return null;
    }

    public TextView getTextView() {
        return (TextView) this.view;
    }

    public View getView() {
        return this.view;
    }

    public WebView getWebView() {
        return (WebView) this.view;
    }

    public T gone() {
        return (T) visibility(8);
    }

    public T hardwareAccelerated11() {
        Activity activity = this.act;
        if (activity != null) {
            activity.getWindow().setFlags(16777216, 16777216);
        }
        return (T) self();
    }

    public T height(int i2) {
        size(false, i2, true);
        return (T) self();
    }

    public T id(int i2) {
        return (T) id(findView(i2));
    }

    public T image(int i2) {
        View view = this.view;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(Constants.TAG_URL, null);
            if (i2 == 0) {
                imageView.setImageBitmap(null);
            } else {
                imageView.setImageResource(i2);
            }
        }
        return (T) self();
    }

    public View inflate(View view, int i2, ViewGroup viewGroup) {
        Integer num;
        if (view != null && (num = (Integer) view.getTag(Constants.TAG_LAYOUT)) != null && num.intValue() == i2) {
            return view;
        }
        Activity activity = this.act;
        View viewInflate = (activity != null ? activity.getLayoutInflater() : (LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(i2, viewGroup, false);
        viewInflate.setTag(Constants.TAG_LAYOUT, Integer.valueOf(i2));
        return viewInflate;
    }

    public T invalidate(String str) {
        File cachedFile = getCachedFile(str);
        if (cachedFile != null) {
            cachedFile.delete();
        }
        return (T) self();
    }

    public T invisible() {
        return (T) visibility(4);
    }

    public Object invoke(String str, Class<?>[] clsArr, Object... objArr) {
        Object obj = this.view;
        if (obj == null) {
            obj = this.act;
        }
        return AQUtility.invokeHandler(obj, str, false, false, clsArr, objArr);
    }

    public boolean isChecked() {
        View view = this.view;
        if (view instanceof CompoundButton) {
            return ((CompoundButton) view).isChecked();
        }
        return false;
    }

    public boolean isExist() {
        return this.view != null;
    }

    public T itemClicked(Object obj, String str) {
        return (T) itemClicked(new Common().forward(obj, str, true, ON_ITEM_SIG));
    }

    public T itemSelected(Object obj, String str) {
        return (T) itemSelected(new Common().forward(obj, str, true, ON_ITEM_SIG));
    }

    public T longClick() {
        View view = this.view;
        if (view != null) {
            view.performLongClick();
        }
        return (T) self();
    }

    public T longClicked(Object obj, String str) {
        return (T) longClicked(new Common().forward(obj, str, true, ON_CLICK_SIG));
    }

    public File makeSharedFile(String str, String str2) throws IOException {
        Exception exc;
        File tempDir;
        File file = null;
        try {
            File cachedFile = getCachedFile(str);
            if (cachedFile == null || (tempDir = AQUtility.getTempDir()) == null) {
                return null;
            }
            File file2 = new File(tempDir, str2);
            try {
                file2.createNewFile();
                FileInputStream fileInputStream = new FileInputStream(cachedFile);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                FileChannel channel = fileInputStream.getChannel();
                FileChannel channel2 = fileOutputStream.getChannel();
                try {
                    channel.transferTo(0L, channel.size(), channel2);
                    return file2;
                } finally {
                    AQUtility.close(fileInputStream);
                    AQUtility.close(fileOutputStream);
                    AQUtility.close(channel);
                    AQUtility.close(channel2);
                }
            } catch (Exception e2) {
                exc = e2;
                file = file2;
                AQUtility.debug((Throwable) exc);
                return file;
            }
        } catch (Exception e3) {
            exc = e3;
        }
    }

    public T margin(float f2, float f3, float f4, float f5) {
        View view = this.view;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                Context context = getContext();
                ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(AQUtility.dip2pixel(context, f2), AQUtility.dip2pixel(context, f3), AQUtility.dip2pixel(context, f4), AQUtility.dip2pixel(context, f5));
                this.view.setLayoutParams(layoutParams);
            }
        }
        return (T) self();
    }

    public T overridePendingTransition5(int i2, int i3) {
        Activity activity = this.act;
        if (activity != null) {
            AQUtility.invokeHandler(activity, "overridePendingTransition", false, false, PENDING_TRANSITION_SIG, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        return (T) self();
    }

    public T parent(int i2) {
        View view = this.view;
        while (view != null) {
            if (view.getId() == i2) {
                break;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        view = null;
        return (T) create(view);
    }

    public T policy(int i2) {
        this.policy = Integer.valueOf(i2);
        return (T) self();
    }

    public T progress(int i2) {
        this.progress = findView(i2);
        return (T) self();
    }

    public T proxy(String str, int i2) {
        this.proxy = new HttpHost(str, i2);
        return (T) self();
    }

    public <K> T put(String str, String str2, HttpEntity httpEntity, Class<K> cls, AjaxCallback<K> ajaxCallback) {
        ajaxCallback.url(str).type(cls).method(3).header(AbstractC1114b.f5589g, str2).param(Constants.POST_ENTITY, httpEntity);
        return (T) ajax(ajaxCallback);
    }

    public T rating(float f2) {
        View view = this.view;
        if (view instanceof RatingBar) {
            ((RatingBar) view).setRating(f2);
        }
        return (T) self();
    }

    public T recycle(View view) {
        this.root = view;
        this.view = view;
        reset();
        this.context = null;
        return (T) self();
    }

    public void reset() {
        this.ah = null;
        this.progress = null;
        this.trans = null;
        this.policy = 0;
        this.proxy = null;
    }

    public T scrolled(AbsListView.OnScrollListener onScrollListener) {
        if (this.view instanceof AbsListView) {
            setScrollListener().forward(onScrollListener);
        }
        return (T) self();
    }

    public T scrolledBottom(Object obj, String str) {
        if (this.view instanceof AbsListView) {
            setScrollListener().forward(obj, str, true, ON_SCROLLED_STATE_SIG);
        }
        return (T) self();
    }

    public T setLayerType11(int i2, Paint paint) {
        View view = this.view;
        if (view != null) {
            AQUtility.invokeHandler(view, "setLayerType", false, false, LAYER_TYPE_SIG, Integer.valueOf(i2), paint);
        }
        return (T) self();
    }

    public T setOverScrollMode9(int i2) {
        View view = this.view;
        if (view instanceof AbsListView) {
            AQUtility.invokeHandler(view, "setOverScrollMode", false, false, OVER_SCROLL_SIG, Integer.valueOf(i2));
        }
        return (T) self();
    }

    public T setSelection(int i2) {
        View view = this.view;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setSelection(i2);
        }
        return (T) self();
    }

    @Deprecated
    public boolean shouldDelay(View view, ViewGroup viewGroup, String str, float f2) {
        return Common.shouldDelay(view, viewGroup, str, f2, true);
    }

    public T show(Dialog dialog) {
        if (dialog != null) {
            try {
                dialog.show();
                dialogs.put(dialog, null);
            } catch (Exception unused) {
            }
        }
        return (T) self();
    }

    public <K> T sync(AjaxCallback<K> ajaxCallback) {
        ajax(ajaxCallback);
        ajaxCallback.block();
        return (T) self();
    }

    public T tag(Object obj) {
        View view = this.view;
        if (view != null) {
            view.setTag(obj);
        }
        return (T) self();
    }

    public T text(int i2) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setText(i2);
        }
        return (T) self();
    }

    public T textChanged(Object obj, String str) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).addTextChangedListener(new Common().forward(obj, str, true, TEXT_CHANGE_SIG));
        }
        return (T) self();
    }

    public T textColor(int i2) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(i2);
        }
        return (T) self();
    }

    public T textSize(float f2) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setTextSize(f2);
        }
        return (T) self();
    }

    public T transformer(Transformer transformer) {
        this.trans = transformer;
        return (T) self();
    }

    public T transparent(boolean z2) {
        View view = this.view;
        if (view != null) {
            AQUtility.transparent(view, z2);
        }
        return (T) self();
    }

    public T typeface(Typeface typeface) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setTypeface(typeface);
        }
        return (T) self();
    }

    public T visibility(int i2) {
        View view = this.view;
        if (view != null && view.getVisibility() != i2) {
            this.view.setVisibility(i2);
        }
        return (T) self();
    }

    public T visible() {
        return (T) visibility(0);
    }

    public T webImage(String str) {
        return (T) webImage(str, true, false, -16777216);
    }

    public T width(int i2) {
        size(true, i2, true);
        return (T) self();
    }

    public <K> T ajax(String str, Class<K> cls, AjaxCallback<K> ajaxCallback) {
        ajaxCallback.type(cls).url(str);
        return (T) ajax(ajaxCallback);
    }

    public T animate(int i2, Animation.AnimationListener animationListener) throws Resources.NotFoundException {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), i2);
        animationLoadAnimation.setAnimationListener(animationListener);
        return (T) animate(animationLoadAnimation);
    }

    public Bitmap getCachedImage(String str, int i2) {
        File cachedFile;
        Bitmap memoryCached = BitmapAjaxCallback.getMemoryCached(str, i2);
        return (memoryCached != null || (cachedFile = getCachedFile(str)) == null) ? memoryCached : BitmapAjaxCallback.getResizedImage(cachedFile.getAbsolutePath(), null, i2, true, 0);
    }

    public T id(View view) {
        this.view = view;
        reset();
        return (T) self();
    }

    @Deprecated
    public boolean shouldDelay(View view, ViewGroup viewGroup, String str, float f2, boolean z2) {
        return Common.shouldDelay(view, viewGroup, str, f2, z2);
    }

    public T webImage(String str, boolean z2, boolean z3, int i2) {
        if (this.view instanceof WebView) {
            setLayerType11(1, null);
            new WebImage((WebView) this.view, str, this.progress, z2, z3, i2).load();
            this.progress = null;
        }
        return (T) self();
    }

    public AbstractAQuery(View view) {
        this.root = view;
        this.view = view;
    }

    public T clicked(View.OnClickListener onClickListener) {
        View view = this.view;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        return (T) self();
    }

    public <K> T delete(String str, Class<K> cls, Object obj, String str2) {
        AjaxCallback<K> ajaxCallback = new AjaxCallback<>();
        ajaxCallback.weakHandler(obj, str2);
        return (T) delete(str, cls, ajaxCallback);
    }

    public T download(String str, File file, Object obj, String str2) {
        AjaxCallback<File> ajaxCallback = new AjaxCallback<>();
        ajaxCallback.weakHandler(obj, str2);
        return (T) download(str, file, ajaxCallback);
    }

    public Object getTag(int i2) {
        View view = this.view;
        if (view != null) {
            return view.getTag(i2);
        }
        return null;
    }

    public T height(int i2, boolean z2) {
        size(false, i2, z2);
        return (T) self();
    }

    public T itemClicked(AdapterView.OnItemClickListener onItemClickListener) {
        View view = this.view;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setOnItemClickListener(onItemClickListener);
        }
        return (T) self();
    }

    public T itemSelected(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        View view = this.view;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setOnItemSelectedListener(onItemSelectedListener);
        }
        return (T) self();
    }

    public T longClicked(View.OnLongClickListener onLongClickListener) {
        View view = this.view;
        if (view != null) {
            view.setOnLongClickListener(onLongClickListener);
        }
        return (T) self();
    }

    public T progress(Object obj) {
        this.progress = obj;
        return (T) self();
    }

    public boolean shouldDelay(int i2, boolean z2, View view, ViewGroup viewGroup, String str) {
        return Common.shouldDelay(i2, -1, view, viewGroup, str);
    }

    public T width(int i2, boolean z2) {
        size(true, i2, z2);
        return (T) self();
    }

    public <K> T ajax(String str, Class<K> cls, long j2, AjaxCallback<K> ajaxCallback) {
        ajaxCallback.type(cls).url(str).fileCache(true).expire(j2);
        return (T) ajax(ajaxCallback);
    }

    public T dismiss() {
        Iterator<Dialog> it = dialogs.keySet().iterator();
        while (it.hasNext()) {
            try {
                it.next().dismiss();
            } catch (Exception unused) {
            }
            it.remove();
        }
        return (T) self();
    }

    public <K> T invoke(AbstractAjaxCallback<?, K> abstractAjaxCallback) {
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            abstractAjaxCallback.auth(accountHandle);
        }
        Object obj = this.progress;
        if (obj != null) {
            abstractAjaxCallback.progress(obj);
        }
        Transformer transformer = this.trans;
        if (transformer != null) {
            abstractAjaxCallback.transformer(transformer);
        }
        Integer num = this.policy;
        if (num != null) {
            abstractAjaxCallback.policy(num.intValue());
        }
        HttpHost httpHost = this.proxy;
        if (httpHost != null) {
            abstractAjaxCallback.proxy(httpHost.getHostName(), this.proxy.getPort());
        }
        Activity activity = this.act;
        if (activity != null) {
            abstractAjaxCallback.async(activity);
        } else {
            abstractAjaxCallback.async(getContext());
        }
        reset();
        return (T) self();
    }

    public boolean shouldDelay(int i2, int i3, boolean z2, View view, ViewGroup viewGroup, String str) {
        return Common.shouldDelay(i2, i3, view, viewGroup, str);
    }

    public T tag(int i2, Object obj) {
        View view = this.view;
        if (view != null) {
            view.setTag(i2, obj);
        }
        return (T) self();
    }

    private View findView(String str) {
        View childAt;
        View view = this.root;
        if (view != null) {
            return view.findViewWithTag(str);
        }
        Activity activity = this.act;
        if (activity == null || (childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0)) == null) {
            return null;
        }
        return childAt.findViewWithTag(str);
    }

    public T adapter(ExpandableListAdapter expandableListAdapter) {
        View view = this.view;
        if (view instanceof ExpandableListView) {
            ((ExpandableListView) view).setAdapter(expandableListAdapter);
        }
        return (T) self();
    }

    public T animate(Animation animation) {
        View view = this.view;
        if (view != null && animation != null) {
            view.startAnimation(animation);
        }
        return (T) self();
    }

    public Bitmap getCachedImage(int i2) {
        return BitmapAjaxCallback.getMemoryCached(getContext(), i2);
    }

    public T id(String str) {
        return (T) id(findView(str));
    }

    public T progress(Dialog dialog) {
        this.progress = dialog;
        return (T) self();
    }

    public boolean shouldDelay(int i2, View view, ViewGroup viewGroup, String str) {
        if (!(viewGroup instanceof ExpandableListView)) {
            return Common.shouldDelay(i2, view, viewGroup, str);
        }
        throw new IllegalArgumentException("Please use the other shouldDelay methods for expandable list.");
    }

    public T text(int i2, Object... objArr) {
        Context context = getContext();
        if (context != null) {
            text(context.getString(i2, objArr));
        }
        return (T) self();
    }

    public AbstractAQuery(Activity activity, View view) {
        this.root = view;
        this.view = view;
        this.act = activity;
    }

    public <K> T ajax(String str, Class<K> cls, Object obj, String str2) {
        AjaxCallback<K> ajaxCallback = new AjaxCallback<>();
        ajaxCallback.type(cls).weakHandler(obj, str2);
        return (T) ajax(str, cls, ajaxCallback);
    }

    public T expand(boolean z2) {
        ExpandableListView expandableListView;
        ExpandableListAdapter expandableListAdapter;
        View view = this.view;
        if ((view instanceof ExpandableListView) && (expandableListAdapter = (expandableListView = (ExpandableListView) view).getExpandableListAdapter()) != null) {
            int groupCount = expandableListAdapter.getGroupCount();
            for (int i2 = 0; i2 < groupCount; i2++) {
                if (z2) {
                    expandableListView.expandGroup(i2);
                } else {
                    expandableListView.collapseGroup(i2);
                }
            }
        }
        return (T) self();
    }

    public T id(int... iArr) {
        return (T) id(findView(iArr));
    }

    public T image(Drawable drawable) {
        View view = this.view;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(Constants.TAG_URL, null);
            imageView.setImageDrawable(drawable);
        }
        return (T) self();
    }

    public <K> T ajax(String str, Class<K> cls, long j2, Object obj, String str2) {
        AjaxCallback<K> ajaxCallback = new AjaxCallback<>();
        ajaxCallback.type(cls).weakHandler(obj, str2).fileCache(true).expire(j2);
        return (T) ajax(str, cls, ajaxCallback);
    }

    public T text(CharSequence charSequence) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        }
        return (T) self();
    }

    public AbstractAQuery(Context context) {
        this.context = context;
    }

    private View findView(int... iArr) {
        View viewFindView = findView(iArr[0]);
        for (int i2 = 1; i2 < iArr.length && viewFindView != null; i2++) {
            viewFindView = viewFindView.findViewById(iArr[i2]);
        }
        return viewFindView;
    }

    public <K> T ajax(String str, Map<String, ?> map, Class<K> cls, AjaxCallback<K> ajaxCallback) {
        ajaxCallback.type(cls).url(str).params(map);
        return (T) ajax(ajaxCallback);
    }

    public T image(Bitmap bitmap) {
        View view = this.view;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(Constants.TAG_URL, null);
            imageView.setImageBitmap(bitmap);
        }
        return (T) self();
    }

    public T text(CharSequence charSequence, boolean z2) {
        if (z2 && (charSequence == null || charSequence.length() == 0)) {
            return (T) gone();
        }
        return (T) text(charSequence);
    }

    public <K> T ajax(String str, Map<String, ?> map, Class<K> cls, Object obj, String str2) {
        AjaxCallback<K> ajaxCallback = new AjaxCallback<>();
        ajaxCallback.type(cls).weakHandler(obj, str2);
        return (T) ajax(str, map, cls, ajaxCallback);
    }

    public T text(Spanned spanned) {
        View view = this.view;
        if (view instanceof TextView) {
            ((TextView) view).setText(spanned);
        }
        return (T) self();
    }

    public T image(String str) {
        return (T) image(str, true, true, 0, 0);
    }

    public T image(String str, boolean z2, boolean z3) {
        return (T) image(str, z2, z3, 0, 0);
    }

    public T image(String str, boolean z2, boolean z3, int i2, int i3) {
        return (T) image(str, z2, z3, i2, i3, null, 0);
    }

    public T image(String str, boolean z2, boolean z3, int i2, int i3, Bitmap bitmap, int i4) {
        return (T) image(str, z2, z3, i2, i3, bitmap, i4, 0.0f);
    }

    public T image(String str, boolean z2, boolean z3, int i2, int i3, Bitmap bitmap, int i4, float f2) {
        return (T) image(str, z2, z3, i2, i3, bitmap, i4, f2, 0, null);
    }

    public T image(String str, boolean z2, boolean z3, int i2, int i3, Bitmap bitmap, int i4, float f2, int i5, String str2) {
        if (this.view instanceof ImageView) {
            BitmapAjaxCallback.async(this.act, getContext(), (ImageView) this.view, str, z2, z3, i2, i3, bitmap, i4, f2, Float.MAX_VALUE, this.progress, this.ah, this.policy.intValue(), i5, this.proxy, str2);
            reset();
        }
        return (T) self();
    }

    public T image(String str, ImageOptions imageOptions) {
        return (T) image(str, imageOptions, (String) null);
    }

    public T image(String str, ImageOptions imageOptions, String str2) {
        if (this.view instanceof ImageView) {
            BitmapAjaxCallback.async(this.act, getContext(), (ImageView) this.view, str, this.progress, this.ah, imageOptions, this.proxy, str2);
            reset();
        }
        return (T) self();
    }

    public T image(BitmapAjaxCallback bitmapAjaxCallback) {
        View view = this.view;
        if (view instanceof ImageView) {
            bitmapAjaxCallback.imageView((ImageView) view);
            invoke(bitmapAjaxCallback);
        }
        return (T) self();
    }

    public T image(String str, boolean z2, boolean z3, int i2, int i3, BitmapAjaxCallback bitmapAjaxCallback) {
        bitmapAjaxCallback.targetWidth(i2).fallback(i3).url(str).memCache(z2).fileCache(z3);
        return (T) image(bitmapAjaxCallback);
    }

    public T image(File file, int i2) {
        return (T) image(file, true, i2, null);
    }

    public T image(File file, boolean z2, int i2, BitmapAjaxCallback bitmapAjaxCallback) {
        if (bitmapAjaxCallback == null) {
            bitmapAjaxCallback = new BitmapAjaxCallback();
        }
        BitmapAjaxCallback bitmapAjaxCallback2 = bitmapAjaxCallback;
        bitmapAjaxCallback2.file(file);
        return (T) image(file != null ? file.getAbsolutePath() : null, z2, true, i2, 0, bitmapAjaxCallback2);
    }

    public T image(Bitmap bitmap, float f2) {
        BitmapAjaxCallback bitmapAjaxCallback = new BitmapAjaxCallback();
        bitmapAjaxCallback.ratio(f2).bitmap(bitmap);
        return (T) image(bitmapAjaxCallback);
    }
}
