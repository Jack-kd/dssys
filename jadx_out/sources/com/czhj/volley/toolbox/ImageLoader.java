package com.czhj.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.czhj.volley.Request;
import com.czhj.volley.RequestQueue;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class ImageLoader {

    /* renamed from: a, reason: collision with root package name */
    private final RequestQueue f29653a;

    /* renamed from: b, reason: collision with root package name */
    private final ImageCache f29654b;

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f29655c = new HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f29656d = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private final Handler f29657e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    private int f29658f = 100;

    /* renamed from: g, reason: collision with root package name */
    private Runnable f29659g;

    public static class BatchedImageRequest {

        /* renamed from: a, reason: collision with root package name */
        private final Request<?> f29668a;

        /* renamed from: b, reason: collision with root package name */
        private final List<ImageContainer> f29669b;

        /* renamed from: c, reason: collision with root package name */
        private Bitmap f29670c;

        /* renamed from: d, reason: collision with root package name */
        private VolleyError f29671d;

        public BatchedImageRequest(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f29669b = arrayList;
            this.f29668a = request;
            arrayList.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f29669b.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f29671d;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f29669b.remove(imageContainer);
            if (this.f29669b.size() != 0) {
                return false;
            }
            this.f29668a.cancel();
            return true;
        }

        public void setError(VolleyError volleyError) {
            this.f29671d = volleyError;
        }
    }

    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    public class ImageContainer {

        /* renamed from: b, reason: collision with root package name */
        private final ImageListener f29673b;

        /* renamed from: c, reason: collision with root package name */
        private final String f29674c;

        /* renamed from: d, reason: collision with root package name */
        private final String f29675d;

        /* renamed from: e, reason: collision with root package name */
        private Bitmap f29676e;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f29676e = bitmap;
            this.f29675d = str;
            this.f29674c = str2;
            this.f29673b = imageListener;
        }

        public void cancelRequest() {
            HashMap map;
            Threads.a();
            if (this.f29673b == null) {
                return;
            }
            BatchedImageRequest batchedImageRequest = (BatchedImageRequest) ImageLoader.this.f29655c.get(this.f29674c);
            if (batchedImageRequest == null) {
                BatchedImageRequest batchedImageRequest2 = (BatchedImageRequest) ImageLoader.this.f29656d.get(this.f29674c);
                if (batchedImageRequest2 == null) {
                    return;
                }
                batchedImageRequest2.removeContainerAndCancelIfNecessary(this);
                if (batchedImageRequest2.f29669b.size() != 0) {
                    return;
                } else {
                    map = ImageLoader.this.f29656d;
                }
            } else if (!batchedImageRequest.removeContainerAndCancelIfNecessary(this)) {
                return;
            } else {
                map = ImageLoader.this.f29655c;
            }
            map.remove(this.f29674c);
        }

        public Bitmap getBitmap() {
            return this.f29676e;
        }

        public String getRequestUrl() {
            return this.f29675d;
        }
    }

    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z2);
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f29653a = requestQueue;
        this.f29654b = imageCache;
    }

    public static ImageListener getImageListener(final ImageView imageView, final int i2, final int i3) {
        return new ImageListener() { // from class: com.czhj.volley.toolbox.ImageLoader.1
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                int i4 = i3;
                if (i4 != 0) {
                    imageView.setImageResource(i4);
                }
            }

            @Override // com.czhj.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageContainer imageContainer, boolean z2) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                    return;
                }
                int i4 = i2;
                if (i4 != 0) {
                    imageView.setImageResource(i4);
                }
            }
        };
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public boolean isCached(String str, int i2, int i3) {
        return isCached(str, i2, i3, ImageView.ScaleType.CENTER_INSIDE);
    }

    public Request<Bitmap> makeImageRequest(String str, int i2, int i3, ImageView.ScaleType scaleType, final String str2) {
        return new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.czhj.volley.toolbox.ImageLoader.2
            @Override // com.czhj.volley.Response.Listener
            public void onResponse(Bitmap bitmap) {
                ImageLoader.this.onGetImageSuccess(str2, bitmap);
            }
        }, i2, i3, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.czhj.volley.toolbox.ImageLoader.3
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                ImageLoader.this.onGetImageError(str2, volleyError);
            }
        });
    }

    public void onGetImageError(String str, VolleyError volleyError) {
        BatchedImageRequest batchedImageRequestRemove = this.f29655c.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.setError(volleyError);
            a(str, batchedImageRequestRemove);
        }
    }

    public void onGetImageSuccess(String str, Bitmap bitmap) {
        this.f29654b.putBitmap(str, bitmap);
        BatchedImageRequest batchedImageRequestRemove = this.f29655c.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.f29670c = bitmap;
            a(str, batchedImageRequestRemove);
        }
    }

    public void setBatchedResponseDelay(int i2) {
        this.f29658f = i2;
    }

    private static String a(String str, int i2, int i3, ImageView.ScaleType scaleType) {
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i2);
        sb.append("#H");
        sb.append(i3);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str);
        return sb.toString();
    }

    public ImageContainer get(String str, ImageListener imageListener, int i2, int i3) {
        return get(str, imageListener, i2, i3, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i2, int i3, ImageView.ScaleType scaleType) {
        Threads.a();
        return this.f29654b.getBitmap(a(str, i2, i3, scaleType)) != null;
    }

    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1096)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1050)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    public com.czhj.volley.toolbox.ImageLoader.ImageContainer get(
    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1096)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1050)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r10v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
        	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
        	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
        	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:103)
        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
        	at jadx.core.ProcessClass.process(ProcessClass.java:79)
        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:117)
        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:403)
        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:391)
        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:341)
        */

    private void a(String str, BatchedImageRequest batchedImageRequest) {
        this.f29656d.put(str, batchedImageRequest);
        if (this.f29659g == null) {
            Runnable runnable = new Runnable() { // from class: com.czhj.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    for (BatchedImageRequest batchedImageRequest2 : ImageLoader.this.f29656d.values()) {
                        for (ImageContainer imageContainer : batchedImageRequest2.f29669b) {
                            if (imageContainer.f29673b != null) {
                                if (batchedImageRequest2.getError() == null) {
                                    imageContainer.f29676e = batchedImageRequest2.f29670c;
                                    imageContainer.f29673b.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.f29673b.onErrorResponse(batchedImageRequest2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.f29656d.clear();
                    ImageLoader.this.f29659g = null;
                }
            };
            this.f29659g = runnable;
            this.f29657e.postDelayed(runnable, this.f29658f);
        }
    }
}
