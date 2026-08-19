.class Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$b;->b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$b;->b:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->a(Ljava/lang/String;)V

    return-void
.end method
