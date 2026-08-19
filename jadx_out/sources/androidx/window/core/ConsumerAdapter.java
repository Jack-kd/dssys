package androidx.window.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import androidx.window.reflection.WindowExtensionsConstants;
import com.byazt.pu.TTDownloadField;
import com.umeng.analytics.pro.g;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.Metadata;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.c;
import kotlin.reflect.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001:\u0002'(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ;\u0010\u000f\u001a\u00020\u0001\"\b\b\u0000\u0010\t*\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\bJI\u0010\u0016\u001a\u00020\r\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0016\u0010\u0017J[\u0010\u001d\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001d\u0010\u001eJS\u0010\u001f\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001f\u0010 J[\u0010\u001d\u001a\u00020\u001c\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u001d\u0010#JQ\u0010$\u001a\u00020\r\"\b\b\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010&¨\u0006)"}, d2 = {"Landroidx/window/core/ConsumerAdapter;", "", "Ljava/lang/ClassLoader;", "loader", "<init>", "(Ljava/lang/ClassLoader;)V", "Ljava/lang/Class;", "unsafeConsumerClass", "()Ljava/lang/Class;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/c;", "clazz", "Lkotlin/Function1;", "Lkotlin/j;", "consumer", "buildConsumer", "(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "consumerClassOrNull$window_release", "consumerClassOrNull", "obj", "", "methodName", "addConsumer", "(Ljava/lang/Object;Lkotlin/reflect/c;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "addMethodName", "removeMethodName", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Landroidx/window/core/ConsumerAdapter$Subscription;", "createSubscription", "(Ljava/lang/Object;Lkotlin/reflect/c;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/ConsumerAdapter$Subscription;", "createSubscriptionNoActivity", "(Ljava/lang/Object;Lkotlin/reflect/c;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/ConsumerAdapter$Subscription;", "Landroid/content/Context;", g.f49337X, "(Ljava/lang/Object;Lkotlin/reflect/c;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/ConsumerAdapter$Subscription;", "createConsumer", "(Ljava/lang/Object;Lkotlin/reflect/c;Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V", "Ljava/lang/ClassLoader;", "ConsumerHandler", "Subscription", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"BanUncheckedReflection"})
/* loaded from: classes.dex */
public final class ConsumerAdapter {

    @NotNull
    private final ClassLoader loader;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ%\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0011\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J%\u0010\u0012\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J%\u0010\u0013\u001a\u00020\u000e*\u00020\u000b2\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0010J2\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000b2\u0010\u0010\u0016\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001cR \u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/window/core/ConsumerAdapter$ConsumerHandler;", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/reflect/InvocationHandler;", "Lkotlin/reflect/c;", "clazz", "Lkotlin/Function1;", "Lkotlin/j;", "consumer", "<init>", "(Lkotlin/reflect/c;Lkotlin/jvm/functions/Function1;)V", "Ljava/lang/reflect/Method;", "", "args", "", "isEquals", "(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z", "isHashCode", "isAccept", "isToString", "obj", "method", "parameters", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "parameter", "invokeAccept", "(Ljava/lang/Object;)V", "Lkotlin/reflect/c;", "Lkotlin/jvm/functions/Function1;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ConsumerHandler<T> implements InvocationHandler {

        @NotNull
        private final c clazz;

        @NotNull
        private final Function1<T, j> consumer;

        /* JADX WARN: Multi-variable type inference failed */
        public ConsumerHandler(@NotNull c clazz, @NotNull Function1<? super T, j> consumer) {
            kotlin.jvm.internal.j.e(clazz, "clazz");
            kotlin.jvm.internal.j.e(consumer, "consumer");
            this.clazz = clazz;
            this.consumer = consumer;
        }

        private final boolean isAccept(Method method, Object[] objArr) {
            return kotlin.jvm.internal.j.a(method.getName(), "accept") && objArr != null && objArr.length == 1;
        }

        private final boolean isEquals(Method method, Object[] objArr) {
            return kotlin.jvm.internal.j.a(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        private final boolean isHashCode(Method method, Object[] objArr) {
            return kotlin.jvm.internal.j.a(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        private final boolean isToString(Method method, Object[] objArr) {
            return kotlin.jvm.internal.j.a(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.reflect.InvocationHandler
        @NotNull
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] parameters) {
            kotlin.jvm.internal.j.e(obj, "obj");
            kotlin.jvm.internal.j.e(method, "method");
            if (isAccept(method, parameters)) {
                invokeAccept(d.a(this.clazz, parameters != null ? parameters[0] : null));
                return j.f51397a;
            }
            if (isEquals(method, parameters)) {
                return Boolean.valueOf(obj == (parameters != null ? parameters[0] : null));
            }
            if (isHashCode(method, parameters)) {
                return Integer.valueOf(this.consumer.hashCode());
            }
            if (isToString(method, parameters)) {
                return this.consumer.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + parameters);
        }

        public final void invokeAccept(@NotNull T parameter) {
            kotlin.jvm.internal.j.e(parameter, "parameter");
            this.consumer.invoke(parameter);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/window/core/ConsumerAdapter$Subscription;", "", "Lkotlin/j;", "dispose", "()V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Subscription {
        void dispose();
    }

    public ConsumerAdapter(@NotNull ClassLoader loader) {
        kotlin.jvm.internal.j.e(loader, "loader");
        this.loader = loader;
    }

    private final <T> Object buildConsumer(c clazz, Function1<? super T, j> consumer) throws IllegalArgumentException {
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{unsafeConsumerClass()}, new ConsumerHandler(clazz, consumer));
        kotlin.jvm.internal.j.d(objNewProxyInstance, "newProxyInstance(loader,…onsumerClass()), handler)");
        return objNewProxyInstance;
    }

    private final Class<?> unsafeConsumerClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.JAVA_CONSUMER);
        kotlin.jvm.internal.j.d(clsLoadClass, "loader.loadClass(\"java.util.function.Consumer\")");
        return clsLoadClass;
    }

    public final <T> void addConsumer(@NotNull Object obj, @NotNull c clazz, @NotNull String methodName, @NotNull Function1<? super T, j> consumer) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(obj, "obj");
        kotlin.jvm.internal.j.e(clazz, "clazz");
        kotlin.jvm.internal.j.e(methodName, "methodName");
        kotlin.jvm.internal.j.e(consumer, "consumer");
        obj.getClass().getMethod(methodName, unsafeConsumerClass()).invoke(obj, buildConsumer(clazz, consumer));
    }

    @Nullable
    public final Class<?> consumerClassOrNull$window_release() {
        try {
            return unsafeConsumerClass();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final <T> void createConsumer(@NotNull Object obj, @NotNull c clazz, @NotNull String addMethodName, @NotNull Activity activity, @NotNull Function1<? super T, j> consumer) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(obj, "obj");
        kotlin.jvm.internal.j.e(clazz, "clazz");
        kotlin.jvm.internal.j.e(addMethodName, "addMethodName");
        kotlin.jvm.internal.j.e(activity, "activity");
        kotlin.jvm.internal.j.e(consumer, "consumer");
        obj.getClass().getMethod(addMethodName, Activity.class, unsafeConsumerClass()).invoke(obj, activity, buildConsumer(clazz, consumer));
    }

    @CheckResult
    @NotNull
    public final <T> Subscription createSubscription(@NotNull final Object obj, @NotNull c clazz, @NotNull String addMethodName, @NotNull String removeMethodName, @NotNull Activity activity, @NotNull Function1<? super T, j> consumer) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(obj, "obj");
        kotlin.jvm.internal.j.e(clazz, "clazz");
        kotlin.jvm.internal.j.e(addMethodName, "addMethodName");
        kotlin.jvm.internal.j.e(removeMethodName, "removeMethodName");
        kotlin.jvm.internal.j.e(activity, "activity");
        kotlin.jvm.internal.j.e(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Activity.class, unsafeConsumerClass()).invoke(obj, activity, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscription.1
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    @CheckResult
    @NotNull
    public final <T> Subscription createSubscriptionNoActivity(@NotNull final Object obj, @NotNull c clazz, @NotNull String addMethodName, @NotNull String removeMethodName, @NotNull Function1<? super T, j> consumer) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(obj, "obj");
        kotlin.jvm.internal.j.e(clazz, "clazz");
        kotlin.jvm.internal.j.e(addMethodName, "addMethodName");
        kotlin.jvm.internal.j.e(removeMethodName, "removeMethodName");
        kotlin.jvm.internal.j.e(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, unsafeConsumerClass()).invoke(obj, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscriptionNoActivity.1
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    @CheckResult
    @NotNull
    public final <T> Subscription createSubscription(@NotNull final Object obj, @NotNull c clazz, @NotNull String addMethodName, @NotNull String removeMethodName, @NotNull Context context, @NotNull Function1<? super T, j> consumer) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(obj, "obj");
        kotlin.jvm.internal.j.e(clazz, "clazz");
        kotlin.jvm.internal.j.e(addMethodName, "addMethodName");
        kotlin.jvm.internal.j.e(removeMethodName, "removeMethodName");
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(consumer, "consumer");
        final Object objBuildConsumer = buildConsumer(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Context.class, unsafeConsumerClass()).invoke(obj, context, objBuildConsumer);
        final Method method = obj.getClass().getMethod(removeMethodName, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscription.2
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }
}
