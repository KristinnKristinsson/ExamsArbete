CREATE TRIGGER [DeleteQuestionsFK]
    ON [dbo].[Production]
    INSTEAD OF DELETE
    AS 
    BEGIN

        SET NOCOUNT ON;

        UPDATE  t
        SET     t.ProductionPrimary = NULL
        from [dbo].[Questions] t left join
        deleted d on t.ProductionPrimary = d.CategoryId_fk

        UPDATE  t
        SET     t.ProductionSecondary = NULL
        from [dbo].[Questions] t left join
        deleted d on t.ProductionSecondary = d.CategoryId_fk

        UPDATE  t
        SET     t.ProductionTertiary = NULL
        from [dbo].[Questions] t left join
        deleted d on t.ProductionTertiary = d.CategoryId_fk

        DELETE  t
        from [dbo].[Production] t inner join
        deleted d on d.CategoryId_fk = t.CategoryId_fk

    END
    GO