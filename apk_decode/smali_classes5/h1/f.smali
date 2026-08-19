.class public final synthetic Lh1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh1/k;

.field public final synthetic c:Lj1/e;


# direct methods
.method public synthetic constructor <init>(Lh1/k;Lj1/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/f;->b:Lh1/k;

    iput-object p2, p0, Lh1/f;->c:Lj1/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/f;->b:Lh1/k;

    iget-object v1, p0, Lh1/f;->c:Lj1/e;

    invoke-static {v0, v1}, Lh1/k;->d(Lh1/k;Lj1/e;)V

    return-void
.end method
