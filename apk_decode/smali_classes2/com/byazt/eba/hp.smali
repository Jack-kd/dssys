.class public interface abstract Lcom/byazt/eba/hp;
.super Ljava/lang/Object;


# static fields
.field public static final hp:Lcom/byazt/eba/hp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eba/hp$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eba/hp$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/eba/hp;->hp:Lcom/byazt/eba/hp;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hp(Ljava/io/File;)Lcom/byazt/raq/ec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract hp(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j(Ljava/io/File;)Z
.end method

.method public abstract jx(Ljava/io/File;)Lcom/byazt/raq/vv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract l(Ljava/io/File;)Lcom/byazt/raq/vv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract w(Ljava/io/File;)J
.end method
