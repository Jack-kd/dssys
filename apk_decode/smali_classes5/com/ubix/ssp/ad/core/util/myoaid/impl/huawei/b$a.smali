.class Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b$a;->b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b$a;->b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;->a(Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/b$a;->a:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
