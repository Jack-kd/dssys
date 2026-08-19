.class final Lcom/kwad/sdk/utils/s$a$2;
.super Lcom/kwad/sdk/k/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/s$a;->UF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic boN:Lcom/kwad/sdk/utils/s$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/utils/s$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/utils/s$a$2;->boN:Lcom/kwad/sdk/utils/s$a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/kwad/sdk/k/a/a;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cH(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string p1, "ro.kernel.qemu"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/utils/bs;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "1"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
