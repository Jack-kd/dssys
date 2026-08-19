.class public interface abstract Lcom/varbto/utils/crash/CrashRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanupOldFiles(I)V
.end method

.method public abstract getCrashCountWithinDays(I)I
.end method

.method public abstract getCrashCountWithinDays(Ljava/lang/String;I)I
.end method

.method public abstract getCrashFileCount()I
.end method

.method public abstract getCrashFileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrashFileList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrashFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrashTimestampsWithinDays(I)Lorg/json/JSONArray;
.end method

.method public abstract getCrashTimestampsWithinDays(Ljava/lang/String;I)Lorg/json/JSONArray;
.end method

.method public abstract markFileSent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordCrash(Lcom/varbto/utils/crash/CrashReport;Ljava/lang/Throwable;)V
.end method
