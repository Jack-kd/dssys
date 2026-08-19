.class public final synthetic Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt0/e;

.field public final synthetic c:Lt0/e$d;


# direct methods
.method public synthetic constructor <init>(Lt0/e;Lt0/e$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/c;->b:Lt0/e;

    iput-object p2, p0, Lt0/c;->c:Lt0/e$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/c;->b:Lt0/e;

    iget-object v1, p0, Lt0/c;->c:Lt0/e$d;

    invoke-static {v0, v1}, Lt0/e;->d(Lt0/e;Lt0/e$d;)V

    return-void
.end method
