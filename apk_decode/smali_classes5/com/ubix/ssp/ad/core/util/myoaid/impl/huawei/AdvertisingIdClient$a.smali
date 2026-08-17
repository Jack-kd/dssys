.class Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->updateAdvertisingIdInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->access$000(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
