.class public Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/android/live/base/api/ILiveInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/android/openliveplugin/LivePluginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveInitCallback"
.end annotation


# static fields
.field public static INSTANCE:Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;

    invoke-direct {v0}, Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;-><init>()V

    sput-object v0, Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;->INSTANCE:Lcom/bytedance/android/openliveplugin/LivePluginHelper$LiveInitCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveInitFailed(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1}, Lcom/bytedance/android/live/base/api/ILiveInitCallback;->onLiveInitFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lcom/byazt/ik/a;->hp(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLiveInitFinish()V
    .locals 4

    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->access$000()V

    const-string v0, "live init : LiveInitCallbackWrapper onLiveInitFinish called."

    invoke-static {v0}, Lcom/bytedance/android/openliveplugin/stub/logger/TTLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->initLiveCommerce()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->access$102(Z)Z

    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Lcom/bytedance/android/live/base/api/ILiveInitCallback;->onLiveInitFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lcom/byazt/ik/a;->hp(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
