.class public final Lcom/kwad/components/core/emotion/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/emotion/a$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/emotion/a$1;-><init>(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/kwad/components/core/emotion/a$2;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/emotion/a$2;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
