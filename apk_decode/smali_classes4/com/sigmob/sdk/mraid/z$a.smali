.class public Lcom/sigmob/sdk/mraid/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/views/g;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/base/common/y;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/sigmob/sdk/base/common/v;

.field private final d:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/g;Lcom/sigmob/sdk/base/common/y;Lcom/sigmob/sdk/base/common/v;Lcom/sigmob/sdk/mraid/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/z$a;->a:Lcom/sigmob/sdk/base/views/g;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/z$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/z$a;->c:Lcom/sigmob/sdk/base/common/v;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/z$a;->d:Lcom/sigmob/sdk/mraid/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/views/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/z$a;->a:Lcom/sigmob/sdk/base/views/g;

    return-object v0
.end method

.method public b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/base/common/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/z$a;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/base/common/v;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/z$a;->c:Lcom/sigmob/sdk/base/common/v;

    return-object v0
.end method

.method public d()Lcom/sigmob/sdk/mraid/h;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/z$a;->d:Lcom/sigmob/sdk/mraid/h;

    return-object v0
.end method
