.class Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;
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
.field final synthetic a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->b()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/c$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->a(Ljava/lang/String;)V

    return-void
.end method
