.class public final synthetic Lcom/sigmob/sdk/mraid2/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/I;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/I;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->e(Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method
