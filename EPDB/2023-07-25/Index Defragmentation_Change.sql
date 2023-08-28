BEGIN TRYALTER INDEX [ABTHead#_#progress_recid] ON [epicor905].[dbo].[ABTHead] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ABTHead#_#progress_recid] ON [epicor905].[dbo].[ABTHead] REORGANIZE;ALTER INDEX [ABTHead#_#progress_recid] ON [epicor905].[dbo].[ABTHead] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ABTHead#_#progress_recid on epicor905.dbo.ABTHead has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ABTHead#_#progress_recid does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ABTHead#_#progress_recid_ident] ON [epicor905].[dbo].[ABTHead] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ABTHead#_#progress_recid_ident] ON [epicor905].[dbo].[ABTHead] REORGANIZE;ALTER INDEX [ABTHead#_#progress_recid_ident] ON [epicor905].[dbo].[ABTHead] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ABTHead#_#progress_recid_ident on epicor905.dbo.ABTHead has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ABTHead#_#progress_recid_ident does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [idDoc] ON [epicor905].[dbo].[ABTHead] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index idDoc on epicor905.dbo.ABTHead has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index idDoc does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [idxFind] ON [epicor905].[dbo].[ABTHead] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index idxFind on epicor905.dbo.ABTHead has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index idxFind does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [idxSch] ON [epicor905].[dbo].[ABTHead] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index idxSch on epicor905.dbo.ABTHead has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index idxSch does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ABTHead] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.ABTHead has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.ABTHead, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ABTWork#_#progress_recid] ON [epicor905].[dbo].[ABTWork] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ABTWork#_#progress_recid] ON [epicor905].[dbo].[ABTWork] REORGANIZE;ALTER INDEX [ABTWork#_#progress_recid] ON [epicor905].[dbo].[ABTWork] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ABTWork#_#progress_recid on epicor905.dbo.ABTWork has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ABTWork#_#progress_recid does not exist on epicor905.dbo.ABTWork, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ABTWork#_#progress_recid_ident] ON [epicor905].[dbo].[ABTWork] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ABTWork#_#progress_recid_ident] ON [epicor905].[dbo].[ABTWork] REORGANIZE;ALTER INDEX [ABTWork#_#progress_recid_ident] ON [epicor905].[dbo].[ABTWork] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ABTWork#_#progress_recid_ident on epicor905.dbo.ABTWork has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ABTWork#_#progress_recid_ident does not exist on epicor905.dbo.ABTWork, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IdxCmp] ON [epicor905].[dbo].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IdxCmp on epicor905.dbo.ABTWork has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IdxCmp does not exist on epicor905.dbo.ABTWork, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.ABTWork has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.ABTWork, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AlertLog#_#progress_recid] ON [epicor905].[dbo].[AlertLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AlertLog#_#progress_recid] ON [epicor905].[dbo].[AlertLog] REORGANIZE;ALTER INDEX [AlertLog#_#progress_recid] ON [epicor905].[dbo].[AlertLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AlertLog#_#progress_recid on epicor905.dbo.AlertLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AlertLog#_#progress_recid does not exist on epicor905.dbo.AlertLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AlertLog#_#progress_recid_ident] ON [epicor905].[dbo].[AlertLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AlertLog#_#progress_recid_ident] ON [epicor905].[dbo].[AlertLog] REORGANIZE;ALTER INDEX [AlertLog#_#progress_recid_ident] ON [epicor905].[dbo].[AlertLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AlertLog#_#progress_recid_ident on epicor905.dbo.AlertLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AlertLog#_#progress_recid_ident does not exist on epicor905.dbo.AlertLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Sender] ON [epicor905].[dbo].[AlertLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Sender on epicor905.dbo.AlertLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Sender does not exist on epicor905.dbo.AlertLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[AlertLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.AlertLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.AlertLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AlertQue#_#progress_recid] ON [epicor905].[dbo].[AlertQue] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AlertQue#_#progress_recid] ON [epicor905].[dbo].[AlertQue] REORGANIZE;ALTER INDEX [AlertQue#_#progress_recid] ON [epicor905].[dbo].[AlertQue] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AlertQue#_#progress_recid on epicor905.dbo.AlertQue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AlertQue#_#progress_recid does not exist on epicor905.dbo.AlertQue, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AlertQue#_#progress_recid_ident] ON [epicor905].[dbo].[AlertQue] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AlertQue#_#progress_recid_ident] ON [epicor905].[dbo].[AlertQue] REORGANIZE;ALTER INDEX [AlertQue#_#progress_recid_ident] ON [epicor905].[dbo].[AlertQue] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AlertQue#_#progress_recid_ident on epicor905.dbo.AlertQue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AlertQue#_#progress_recid_ident does not exist on epicor905.dbo.AlertQue, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[AlertQue] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.AlertQue has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.AlertQue, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChgLog#_#progress_recid] ON [epicor905].[dbo].[ChgLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChgLog#_#progress_recid] ON [epicor905].[dbo].[ChgLog] REORGANIZE;ALTER INDEX [ChgLog#_#progress_recid] ON [epicor905].[dbo].[ChgLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChgLog#_#progress_recid on epicor905.dbo.ChgLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChgLog#_#progress_recid does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChgLog#_#progress_recid_ident] ON [epicor905].[dbo].[ChgLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChgLog#_#progress_recid_ident] ON [epicor905].[dbo].[ChgLog] REORGANIZE;ALTER INDEX [ChgLog#_#progress_recid_ident] ON [epicor905].[dbo].[ChgLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChgLog#_#progress_recid_ident on epicor905.dbo.ChgLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChgLog#_#progress_recid_ident does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ComPIDKey] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ComPIDKey on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ComPIDKey does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Date_] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Date_ on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Date_ does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [DateTimeIdx] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index DateTimeIdx on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index DateTimeIdx does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IDKeyDate] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IDKeyDate on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDKeyDate does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_5_20220520] ON [epicor905].[dbo].[ChgLog] REORGANIZE;PRINT 'Index IX_AIDBA_5_20220520 on epicor905.dbo.ChgLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_5_20220520 does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [UserDateIdx] ON [epicor905].[dbo].[ChgLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index UserDateIdx on epicor905.dbo.ChgLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index UserDateIdx does not exist on epicor905.dbo.ChgLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [CurrExChain#_#progress_recid] ON [epicor905].[dbo].[CurrExChain] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [CurrExChain#_#progress_recid] ON [epicor905].[dbo].[CurrExChain] REORGANIZE;ALTER INDEX [CurrExChain#_#progress_recid] ON [epicor905].[dbo].[CurrExChain] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index CurrExChain#_#progress_recid on epicor905.dbo.CurrExChain has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index CurrExChain#_#progress_recid does not exist on epicor905.dbo.CurrExChain, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [CurrExChain#_#progress_recid_ident] ON [epicor905].[dbo].[CurrExChain] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [CurrExChain#_#progress_recid_ident] ON [epicor905].[dbo].[CurrExChain] REORGANIZE;ALTER INDEX [CurrExChain#_#progress_recid_ident] ON [epicor905].[dbo].[CurrExChain] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index CurrExChain#_#progress_recid_ident on epicor905.dbo.CurrExChain has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index CurrExChain#_#progress_recid_ident does not exist on epicor905.dbo.CurrExChain, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[CurrExChain] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.CurrExChain has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.CurrExChain, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AllocationBatch] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AllocationBatch] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [AllocationBatch] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AllocationBatch on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AllocationBatch does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [AllocationStamp] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [AllocationStamp] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [AllocationStamp] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index AllocationStamp on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index AllocationStamp does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookAPInvIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookAPInvIdx] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookAPInvIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookAPInvIdx on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookAPInvIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookARInvIdx] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookARInvIdx on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookARInvIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookBalanceAcct] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookBalanceAcct on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookBalanceAcct does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookBankCheckIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookBankCheckIdx] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookBankCheckIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookBankCheckIdx on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookBankCheckIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookBankSlipIndex] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookBankSlipIndex] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookBankSlipIndex] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookBankSlipIndex on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookBankSlipIndex does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookCheckNumIndex] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookCheckNumIndex on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookCheckNumIndex does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookCOAAccount] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookCOAAccount on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookCOAAccount does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookDailyBal] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookDailyBal] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookDailyBal] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookDailyBal on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookDailyBal does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookFiscalGLAccount] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookFiscalGLAccount on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookFiscalGLAccount does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookFisYearCodeNum] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookFisYearCodeNum] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookFisYearCodeNum] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookFisYearCodeNum on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookFisYearCodeNum does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookJEDate] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookJEDate] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookJEDate] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookJEDate on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookJEDate does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookJournalSeq] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookJournalSeq] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookJournalSeq] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookJournalSeq on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookJournalSeq does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookPerBal] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookPerBal] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookPerBal] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookPerBal on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookPerBal does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookPeriodDateIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookPeriodDateIdx] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookPeriodDateIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookPeriodDateIdx on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookPeriodDateIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookReconciled] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookReconciled] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookReconciled] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookReconciled on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookReconciled does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookRefCode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookRefCode] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookRefCode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookRefCode on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookRefCode does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookTBFlag] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookTBFlag] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [BookTBFlag] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookTBFlag on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookTBFlag does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookTrialAcct] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookTrialAcct on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookTrialAcct does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [COACode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [COACode] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [COACode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index COACode on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index COACode does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [CorrIDX] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index CorrIDX on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index CorrIDX does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [FiscalCalYrSufPeriod] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [FiscalCalYrSufPeriod] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [FiscalCalYrSufPeriod] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index FiscalCalYrSufPeriod on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FiscalCalYrSufPeriod does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [GLJrnDtl#_#progress_recid] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index GLJrnDtl#_#progress_recid on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index GLJrnDtl#_#progress_recid does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [GLJrnDtl#_#progress_recid_ident] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [GLJrnDtl#_#progress_recid_ident] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [GLJrnDtl#_#progress_recid_ident] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index GLJrnDtl#_#progress_recid_ident on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index GLJrnDtl#_#progress_recid_ident does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [MatchCode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [MatchCode] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [MatchCode] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index MatchCode on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index MatchCode does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index OldPrimaryIdx on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index OldPrimaryIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [parentIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [parentIdx] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [parentIdx] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index parentIdx on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index parentIdx does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ParentIdx2] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ParentIdx2] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [ParentIdx2] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ParentIdx2 on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ParentIdx2 does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [PK_GLJrnDtl] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;PRINT 'Index PK_GLJrnDtl on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PK_GLJrnDtl does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SegVal1SegVal2SegVal3] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SegVal1SegVal2SegVal3 on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SegVal1SegVal2SegVal3 does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [StatUOM] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [StatUOM] ON [epicor905].[dbo].[GLJrnDtl] REORGANIZE;ALTER INDEX [StatUOM] ON [epicor905].[dbo].[GLJrnDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index StatUOM on epicor905.dbo.GLJrnDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index StatUOM does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[GLJrnDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.GLJrnDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.GLJrnDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcDtl] REORGANIZE;ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChangeIdx on epicor905.dbo.InvcDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChangeIdx does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_1_20221126] ON [epicor905].[dbo].[InvcDtl] REORGANIZE;PRINT 'Index IX_AIDBA_1_20221126 on epicor905.dbo.InvcDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_1_20221126 does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [OrderIndex] ON [epicor905].[dbo].[InvcDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index OrderIndex on epicor905.dbo.InvcDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index OrderIndex does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PartInvoice] ON [epicor905].[dbo].[InvcDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PartInvoice on epicor905.dbo.InvcDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartInvoice does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PSIndex] ON [epicor905].[dbo].[InvcDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PSIndex on epicor905.dbo.InvcDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PSIndex does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[InvcDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.InvcDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.InvcDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcTax] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcTax] REORGANIZE;ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[InvcTax] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChangeIdx on epicor905.dbo.InvcTax has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChangeIdx does not exist on epicor905.dbo.InvcTax, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[InvcTax] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.InvcTax has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.InvcTax, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[LegalNumHistory] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.LegalNumHistory has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.LegalNumHistory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Voided] ON [epicor905].[dbo].[LegalNumHistory] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Voided on epicor905.dbo.LegalNumHistory has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Voided does not exist on epicor905.dbo.LegalNumHistory, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [Local001#_#progress_recid] ON [epicor905].[dbo].[Local001] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [Local001#_#progress_recid] ON [epicor905].[dbo].[Local001] REORGANIZE;ALTER INDEX [Local001#_#progress_recid] ON [epicor905].[dbo].[Local001] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index Local001#_#progress_recid on epicor905.dbo.Local001 has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Local001#_#progress_recid does not exist on epicor905.dbo.Local001, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [Local001#_#progress_recid_ident] ON [epicor905].[dbo].[Local001] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [Local001#_#progress_recid_ident] ON [epicor905].[dbo].[Local001] REORGANIZE;ALTER INDEX [Local001#_#progress_recid_ident] ON [epicor905].[dbo].[Local001] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index Local001#_#progress_recid_ident on epicor905.dbo.Local001 has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Local001#_#progress_recid_ident does not exist on epicor905.dbo.Local001, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Sysindex] ON [epicor905].[dbo].[Local001] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Sysindex on epicor905.dbo.Local001 has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Sysindex does not exist on epicor905.dbo.Local001, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderDtl] REORGANIZE;ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChangeIdx on epicor905.dbo.OrderDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChangeIdx does not exist on epicor905.dbo.OrderDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderRel] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderRel] REORGANIZE;ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[OrderRel] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChangeIdx on epicor905.dbo.OrderRel has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChangeIdx does not exist on epicor905.dbo.OrderRel, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[OrderRelTax] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.OrderRelTax has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.OrderRelTax, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FIFOTranIdx] ON [epicor905].[dbo].[PartFIFOTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FIFOTranIdx on epicor905.dbo.PartFIFOTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FIFOTranIdx does not exist on epicor905.dbo.PartFIFOTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartFIFOTran#_#progress_recid] ON [epicor905].[dbo].[PartFIFOTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartFIFOTran#_#progress_recid] ON [epicor905].[dbo].[PartFIFOTran] REORGANIZE;ALTER INDEX [PartFIFOTran#_#progress_recid] ON [epicor905].[dbo].[PartFIFOTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartFIFOTran#_#progress_recid on epicor905.dbo.PartFIFOTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartFIFOTran#_#progress_recid does not exist on epicor905.dbo.PartFIFOTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartFIFOTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartFIFOTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartFIFOTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartFIFOTran] REORGANIZE;ALTER INDEX [PartFIFOTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartFIFOTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartFIFOTran#_#progress_recid_ident on epicor905.dbo.PartFIFOTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartFIFOTran#_#progress_recid_ident does not exist on epicor905.dbo.PartFIFOTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[PartFIFOTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.PartFIFOTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.PartFIFOTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ComPartOnHand] ON [epicor905].[dbo].[PartLot] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ComPartOnHand on epicor905.dbo.PartLot has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ComPartOnHand does not exist on epicor905.dbo.PartLot, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartLot#_#progress_recid] ON [epicor905].[dbo].[PartLot] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartLot#_#progress_recid] ON [epicor905].[dbo].[PartLot] REORGANIZE;ALTER INDEX [PartLot#_#progress_recid] ON [epicor905].[dbo].[PartLot] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartLot#_#progress_recid on epicor905.dbo.PartLot has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartLot#_#progress_recid does not exist on epicor905.dbo.PartLot, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartLot#_#progress_recid_ident] ON [epicor905].[dbo].[PartLot] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartLot#_#progress_recid_ident] ON [epicor905].[dbo].[PartLot] REORGANIZE;ALTER INDEX [PartLot#_#progress_recid_ident] ON [epicor905].[dbo].[PartLot] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartLot#_#progress_recid_ident on epicor905.dbo.PartLot has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartLot#_#progress_recid_ident does not exist on epicor905.dbo.PartLot, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[PartLot] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.PartLot has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.PartLot, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [CallNum] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [CallNum] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [CallNum] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index CallNum on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index CallNum does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [Costed] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [Costed] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [Costed] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index Costed on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Costed does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [CoTranDte] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [CoTranDte] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [CoTranDte] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index CoTranDte on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index CoTranDte does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [CustClass] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index CustClass on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index CustClass does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [CycleCountIdx] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index CycleCountIdx on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index CycleCountIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [DemandReconcileNum] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [DemandReconcileNum] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [DemandReconcileNum] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index DemandReconcileNum on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index DemandReconcileNum does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [DMRAction] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [DMRAction] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [DMRAction] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index DMRAction on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index DMRAction does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [DMRDate] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [DMRDate] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [DMRDate] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index DMRDate on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index DMRDate does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FIFOCostIdx] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FIFOCostIdx on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FIFOCostIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [idxABT] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [idxABT] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [idxABT] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index idxABT on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index idxABT does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IdxDatePart] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IdxDatePart on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IdxDatePart does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [idxPartDate] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index idxPartDate on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index idxPartDate does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IdxPartWhse] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IdxPartWhse on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IdxPartWhse does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [idxRevert] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [idxRevert] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [idxRevert] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index idxRevert on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index idxRevert does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IdxWhseActTransUOM] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IdxWhseActTransUOM on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IdxWhseActTransUOM does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [JobAsmSeq] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [JobAsmSeq] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [JobAsmSeq] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index JobAsmSeq on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index JobAsmSeq does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [JobMtlLoans] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [JobMtlLoans] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [JobMtlLoans] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index JobMtlLoans on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index JobMtlLoans does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [JobNum] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index JobNum on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index JobNum does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [JournalIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [JournalIdx] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [JournalIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index JournalIdx on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index JournalIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [LegalNumber] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index LegalNumber on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index LegalNumber does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [NonConfID] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [NonConfID] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [NonConfID] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index NonConfID on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index NonConfID does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [OrderNum] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index OrderNum on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index OrderNum does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PackNum] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PackNum on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PackNum does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PackSlip] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PackSlip on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PackSlip does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PartActivity] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PartActivity on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartActivity does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PartDimDate] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PartDimDate on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartDimDate does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PartLot] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PartLot on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartLot does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartTran#_#progress_recid] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartTran#_#progress_recid] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [PartTran#_#progress_recid] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartTran#_#progress_recid on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartTran#_#progress_recid does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PartTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PartTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [PartTran#_#progress_recid_ident] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PartTran#_#progress_recid_ident on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartTran#_#progress_recid_ident does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PlantTranIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PlantTranIdx] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [PlantTranIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PlantTranIdx on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PlantTranIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PORel] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PORel] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [PORel] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PORel on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PORel does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [postSearch] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index postSearch on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index postSearch does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [RefCodeIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [RefCodeIdx] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [RefCodeIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index RefCodeIdx on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index RefCodeIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [RefTypeIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [RefTypeIdx] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [RefTypeIdx] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index RefTypeIdx on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index RefTypeIdx does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [RMA] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [RMA] ON [epicor905].[dbo].[PartTran] REORGANIZE;ALTER INDEX [RMA] ON [epicor905].[dbo].[PartTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index RMA on epicor905.dbo.PartTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index RMA does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [UserClass] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index UserClass on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index UserClass does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [WhsePartBinSysDate] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index WhsePartBinSysDate on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index WhsePartBinSysDate does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [WhseWhseBin] ON [epicor905].[dbo].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index WhseWhseBin on epicor905.dbo.PartTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index WhseWhseBin does not exist on epicor905.dbo.PartTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PatchFld#_#progress_recid] ON [epicor905].[dbo].[PatchFld] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PatchFld#_#progress_recid] ON [epicor905].[dbo].[PatchFld] REORGANIZE;ALTER INDEX [PatchFld#_#progress_recid] ON [epicor905].[dbo].[PatchFld] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PatchFld#_#progress_recid on epicor905.dbo.PatchFld has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PatchFld#_#progress_recid does not exist on epicor905.dbo.PatchFld, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [PatchFld#_#progress_recid_ident] ON [epicor905].[dbo].[PatchFld] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [PatchFld#_#progress_recid_ident] ON [epicor905].[dbo].[PatchFld] REORGANIZE;ALTER INDEX [PatchFld#_#progress_recid_ident] ON [epicor905].[dbo].[PatchFld] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index PatchFld#_#progress_recid_ident on epicor905.dbo.PatchFld has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PatchFld#_#progress_recid_ident does not exist on epicor905.dbo.PatchFld, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[PatchFld] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.PatchFld has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.PatchFld, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [IdxTransaction] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [IdxTransaction] ON [epicor905].[dbo].[ReplicationLog] REORGANIZE;ALTER INDEX [IdxTransaction] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index IdxTransaction on epicor905.dbo.ReplicationLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IdxTransaction does not exist on epicor905.dbo.ReplicationLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ReplicationLog#_#progress_recid] ON [epicor905].[dbo].[ReplicationLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ReplicationLog#_#progress_recid on epicor905.dbo.ReplicationLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ReplicationLog#_#progress_recid does not exist on epicor905.dbo.ReplicationLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ReplicationLog#_#progress_recid_ident] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ReplicationLog#_#progress_recid_ident] ON [epicor905].[dbo].[ReplicationLog] REORGANIZE;ALTER INDEX [ReplicationLog#_#progress_recid_ident] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ReplicationLog#_#progress_recid_ident on epicor905.dbo.ReplicationLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ReplicationLog#_#progress_recid_ident does not exist on epicor905.dbo.ReplicationLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [SysIndex] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ReplicationLog] REORGANIZE;ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ReplicationLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index SysIndex on epicor905.dbo.ReplicationLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.ReplicationLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[ShipDtl] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[ShipDtl] REORGANIZE;ALTER INDEX [ChangeIdx] ON [epicor905].[dbo].[ShipDtl] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ChangeIdx on epicor905.dbo.ShipDtl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ChangeIdx does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [CustNumCustPart] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index CustNumCustPart on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index CustNumCustPart does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [CustNumOurPart] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index CustNumOurPart on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index CustNumOurPart does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [OrderLineRel] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index OrderLineRel on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index OrderLineRel does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PartNum] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PartNum on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PartNum does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SalesOrderIndx] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SalesOrderIndx on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SalesOrderIndx does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [UnShippped] ON [epicor905].[dbo].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index UnShippped on epicor905.dbo.ShipDtl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index UnShippped does not exist on epicor905.dbo.ShipDtl, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ByCompType on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByCompType does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ByDateTimeUserType on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByDateTimeUserType does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ByTableCompType on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByTableCompType does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ByTableDateTime on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByTableDateTime does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ByTypeComp on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByTypeComp does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ByUserCompDateTime] ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ByUserCompDateTime on epicor905.dbo.SysActivityLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ByUserCompDateTime does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [SysActivityLog#_#progress_recid] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [SysActivityLog#_#progress_recid] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [SysActivityLog#_#progress_recid] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index SysActivityLog#_#progress_recid on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysActivityLog#_#progress_recid does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [SysActivityLog#_#progress_recid_ident] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [SysActivityLog#_#progress_recid_ident] ON [epicor905].[dbo].[SysActivityLog] REORGANIZE;ALTER INDEX [SysActivityLog#_#progress_recid_ident] ON [epicor905].[dbo].[SysActivityLog] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index SysActivityLog#_#progress_recid_ident on epicor905.dbo.SysActivityLog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysActivityLog#_#progress_recid_ident does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.SysActivityLog has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.SysActivityLog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[TaxBoxTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.TaxBoxTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.TaxBoxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TaxBoxTran#_#progress_recid] ON [epicor905].[dbo].[TaxBoxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TaxBoxTran#_#progress_recid] ON [epicor905].[dbo].[TaxBoxTran] REORGANIZE;ALTER INDEX [TaxBoxTran#_#progress_recid] ON [epicor905].[dbo].[TaxBoxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TaxBoxTran#_#progress_recid on epicor905.dbo.TaxBoxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TaxBoxTran#_#progress_recid does not exist on epicor905.dbo.TaxBoxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TaxBoxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxBoxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TaxBoxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxBoxTran] REORGANIZE;ALTER INDEX [TaxBoxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxBoxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TaxBoxTran#_#progress_recid_ident on epicor905.dbo.TaxBoxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TaxBoxTran#_#progress_recid_ident does not exist on epicor905.dbo.TaxBoxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_1_20220520] ON [epicor905].[dbo].[TaxTran] REORGANIZE;PRINT 'Index IX_AIDBA_1_20220520 on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_1_20220520 does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [OldPrimaryIdx] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index OldPrimaryIdx on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index OldPrimaryIdx does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [ReportID] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [ReportID] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [ReportID] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index ReportID on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ReportID does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[TaxTran] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.TaxTran has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TaxCode] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TaxCode] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [TaxCode] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TaxCode on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TaxCode does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TaxTran#_#progress_recid] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TaxTran#_#progress_recid] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [TaxTran#_#progress_recid] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TaxTran#_#progress_recid on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TaxTran#_#progress_recid does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TaxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TaxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [TaxTran#_#progress_recid_ident] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TaxTran#_#progress_recid_ident on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TaxTran#_#progress_recid_ident does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TranNum] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TranNum] ON [epicor905].[dbo].[TaxTran] REORGANIZE;ALTER INDEX [TranNum] ON [epicor905].[dbo].[TaxTran] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TranNum on epicor905.dbo.TaxTran has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TranNum does not exist on epicor905.dbo.TaxTran, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [abtuid] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [abtuid] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [abtuid] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index abtuid on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index abtuid does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookInvoiceCr] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookInvoiceCr on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookInvoiceCr does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookInvoiceDb] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookInvoiceDb on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookInvoiceDb does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [BookJrnlRef] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index BookJrnlRef on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookJrnlRef does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookLaborDtl] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookLaborDtl] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [BookLaborDtl] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookLaborDtl on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookLaborDtl does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [BookTranNum] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [BookTranNum] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [BookTranNum] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index BookTranNum on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BookTranNum does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [COACodeGLAcct] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index COACodeGLAcct on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index COACodeGLAcct does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [CorrIDx] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [CorrIDx] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [CorrIDx] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index CorrIDx on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index CorrIDx does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [GLAcctContext] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [GLAcctContext] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [GLAcctContext] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index GLAcctContext on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index GLAcctContext does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [SysGLControlType] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [SysGLControlType] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [SysGLControlType] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index SysGLControlType on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysGLControlType does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [SysIndex] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index SysIndex on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index SysIndex does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [TranGLC#_#progress_recid] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index TranGLC#_#progress_recid on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index TranGLC#_#progress_recid does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRYALTER INDEX [TranGLC#_#progress_recid_ident] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=ON); ALTER INDEX [TranGLC#_#progress_recid_ident] ON [epicor905].[dbo].[TranGLC] REORGANIZE;ALTER INDEX [TranGLC#_#progress_recid_ident] ON [epicor905].[dbo].[TranGLC] SET(ALLOW_PAGE_LOCKS=OFF);PRINT 'Index TranGLC#_#progress_recid_ident on epicor905.dbo.TranGLC has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index TranGLC#_#progress_recid_ident does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [TypeCode] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index TypeCode on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index TypeCode does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [UserCanModify] ON [epicor905].[dbo].[TranGLC] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index UserCanModify on epicor905.dbo.TranGLC has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index UserCanModify does not exist on epicor905.dbo.TranGLC, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX__KeySpecHashCode] ON [SearchIndex900].[cstp].[_Crawl] REORGANIZE;PRINT 'Index IX__KeySpecHashCode on SearchIndex900.cstp._Crawl has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX__KeySpecHashCode does not exist on SearchIndex900.cstp._Crawl, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX__KeySpecHashCode] ON [SearchIndex900].[TestDB].[_Crawl] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX__KeySpecHashCode on SearchIndex900.TestDB._Crawl has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX__KeySpecHashCode does not exist on SearchIndex900.TestDB._Crawl, or operation encountered an error.'
				END CATCH;
				