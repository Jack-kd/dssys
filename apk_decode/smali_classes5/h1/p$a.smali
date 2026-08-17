.class public Lh1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/p;->b(Lh1/k;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/k;

.field public final synthetic b:Lh1/p;


# direct methods
.method public constructor <init>(Lh1/p;Lh1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1/p$a;->b:Lh1/p;

    .line 2
    .line 3
    iput-object p2, p0, Lh1/p$a;->a:Lh1/k;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/p$a;->a:Lh1/k;

    .line 2
    .line 3
    iget v0, v0, Lh1/k;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/p$a;->a:Lh1/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh1/k;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
