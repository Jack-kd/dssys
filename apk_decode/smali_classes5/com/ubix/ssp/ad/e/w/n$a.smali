.class Lcom/ubix/ssp/ad/e/w/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/n;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/ubix/ssp/ad/e/w/n;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/n;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/n$a;->c:Lcom/ubix/ssp/ad/e/w/n;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/n$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/w/n$a;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/n$a;->c:Lcom/ubix/ssp/ad/e/w/n;

    sget-object v1, Lcom/ubix/ssp/ad/e/w/d;->a:Lcom/ubix/ssp/ad/e/w/d;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/n$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/w/n$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/b;->a(Lcom/ubix/ssp/ad/e/w/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
