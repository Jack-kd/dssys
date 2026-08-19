.class Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->e(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$a;->a:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d(Ljava/lang/String;)V

    return-void
.end method
