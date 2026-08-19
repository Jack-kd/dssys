.class public Lcom/meishu/sdk/core/oaid/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/oaid/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/meishu/sdk/core/oaid/OAIDException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/meishu/sdk/core/utils/l;

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
